//
//  AuthViewModel.swift
//  Habhoob
//
//  Created by sarah hemood  on 05/12/1443 AH.
//


import Foundation
import Firebase
import CodableFirebase


final class AuthViewModel:ObservableObject{
    @Published var isAouthenticatting = false
    @Published var user : User?
    @Published var isLoading : Bool = false
    let tableUsers = "users"
    let tableRequests = "requests"
    let tableTrips = "trips"
   
    // 4
    private let store = Firestore.firestore()
    
    static let shared = AuthViewModel()

    func fetchUser(userId:String,completion: @escaping ((_ userModel:User?,_ error:Error?) -> ()))
    {
        guard let uid = Auth.auth().currentUser?.uid  else {return}
        
        store.collection(self.tableUsers).whereField("userID", isEqualTo: uid).getDocuments { querySnapshot, err in
            
             if let err = err {
                 print(err.localizedDescription)
             } else if querySnapshot!.documents.count != 1 {
                 print("More than one document or none")
             } else {
                 let document = querySnapshot!.documents.first
                 do{
                     let userModel = try FirebaseDecoder().decode(User.self, from: document?.data() ?? Data())
                     completion(userModel,nil)
                 }catch{
                     let error:Error = NSError(domain:"Unable to find user", code:404, userInfo:nil)
                     completion(nil,error)
                 }
             }
        }
        
       /* //Get specific document from current user
        let docRef = store.collection(tableUsers)
            .document(userId)

        // Get data
        docRef.getDocument { (document, error) in
            
            guard let document = document, document.exists else {
                print("Document does not exist")
                let error:Error = NSError(domain:"Unable to find user", code:404, userInfo:nil)
                completion(nil,error)
                return
            }
//            for localDocument in document.documents {
//                print("\(localDocument.documentID)")  Get documentID
//                    print("\(document.data)")  Get all data
//                    print("\(document.data()["name"] as! String)")  Get specific data & type cast it.
//            }
            do{
                let userModel = try FirebaseDecoder().decode(User.self, from: document.data() ?? Data())
                completion(userModel,nil)
            }catch{
                let error:Error = NSError(domain:"Unable to find user", code:404, userInfo:nil)
                completion(nil,error)
            }
        }*/
    }
    func createCustomerRegister(fullname:String,phoneNumber:String,roleType:RoleType = .none,email: String,password: String,completion: @escaping ((_ userId:String?,_ error:Error?) -> ())) {
        print("password===",password)
        Auth.auth().createUser(withEmail: email, password: password) { res, error in
            if error == nil {
                print("Succeeded==",res?.user.uid ?? "")
                
                var userModel:User = User()
                userModel.userId = res?.user.uid ?? ""
                userModel.email = email
                userModel.password = password
                userModel.fullName = fullname
                userModel.phoneNumber = phoneNumber
                userModel.roleType = roleType.description
                UserDefaults.standard.set( res?.user.uid , forKey:LOGIN_UID )
                UserDefaults.standard.set( email , forKey:LOGIN_EMAIL)
                UserDefaults.standard.set( roleType.description , forKey:LOGIN_USER_TYPE)
                do {
                    let dict:[String:Any] = try FirebaseEncoder().encode(userModel) as! [String : Any]
                    var ref: DocumentReference? = nil
                    ref = self.store.collection(self.tableUsers).addDocument(data: dict ) { err in
                        if let err = err {
                            print("Error adding document: \(err)")
                            completion(nil,err)
                        } else {
                            print("ReferenceID===",ref!.documentID) //now you can work with the ride and know it's ID
                            completion(res?.user.uid ?? "",nil)
                        }
                    }
                } catch {
                    let error:Error = NSError(domain:"Unable to add user", code:404, userInfo:nil)
                    completion(nil,error)
                    fatalError("Unable to add user: \(error.localizedDescription).")
                }
               
            } else {
                print("ERRorUID==",res?.user.uid ?? "Error Occured - createRegister")
                completion(nil,error)
                print(error?.localizedDescription ?? "Error Occured - createRegister")
            }
        }
    }
    func createDriverRegister(fullname:String,phoneNumber:String,roleType:RoleType = .none,email: String,password: String,profileImageUrl:String,driverLicenceImageUrl:String,insuranceImageUrl:String,completion: @escaping ((_ userId:String?,_ error:Error?) -> ())) {
        print("password===",password)
        Auth.auth().createUser(withEmail: email, password: password) { res, error in
            if error == nil {
                print("Succeeded==",res?.user.uid ?? "")
                
                var userModel:User = User()
                userModel.userId = res?.user.uid ?? ""
                userModel.email = email
                userModel.password = password
                userModel.fullName = fullname
                userModel.phoneNumber = phoneNumber
                userModel.roleType = roleType.description
                userModel.driverLicenceImageUrl = driverLicenceImageUrl
                userModel.insuranceImageUrl = insuranceImageUrl
                userModel.profileImageUrl = profileImageUrl
                UserDefaults.standard.set( res?.user.uid , forKey:LOGIN_UID )
                UserDefaults.standard.set( email , forKey:LOGIN_EMAIL)
                UserDefaults.standard.set( roleType.description , forKey:LOGIN_USER_TYPE)
                do {
                    let dict:[String:Any] = try FirebaseEncoder().encode(userModel) as! [String : Any]
                    var ref: DocumentReference? = nil
                    ref = self.store.collection(self.tableUsers).addDocument(data: dict ) { err in
                        if let err = err {
                            print("Error adding document: \(err)")
                            completion(nil,err)
                        } else {
                            print("ReferenceID===",ref!.documentID) //now you can work with the ride and know it's ID
                            completion(res?.user.uid ?? "",nil)
                        }
                    }
                } catch {
                    let error:Error = NSError(domain:"Unable to add user", code:404, userInfo:nil)
                    completion(nil,error)
                    fatalError("Unable to add user: \(error.localizedDescription).")
                }
               
            } else {
                print("ERRorUID==",res?.user.uid ?? "Error Occured - createRegister")
                completion(nil,error)
                print(error?.localizedDescription ?? "Error Occured - createRegister")
            }
        }
    }
    func loginUser(email:String, password: String,completion: @escaping ((_ userModel:User?,_ error:Error?) -> ())){
//        self.showLoadingView()
        Auth.auth().signIn(withEmail: email, password: password) { result, error in
            if error == nil {
//                self.hideLoadingView()
//                self.fetchUser()
                
                self.fetchUser(userId: result?.user.uid ?? "") { userModel, error in
                    UserDefaults.standard.set( result?.user.uid , forKey:LOGIN_UID )
                    UserDefaults.standard.set( userModel?.email , forKey:LOGIN_EMAIL)
                    UserDefaults.standard.set( userModel?.roleType , forKey:LOGIN_USER_TYPE)
                    completion(userModel,error)
                }
                self.isAouthenticatting.toggle()
            }else{
                print("Faild to Login",error)
                self.hideLoadingView()
            }
        }
    }
    /*
    func getDriversTrip(completion : @escaping(_ trips: [DriverTrips])->Void){
        var trips = [DriverTrips]()
        KRProgressHUD.show(withMessage: "Please wait...")
        let driverTrips = store.collection("driverTrips")
        driverTrips.getDocuments { doc, error in
            guard let doc = doc else {return}
            for document in doc.documents{
                let data = (document.data())
                let dateAndTime = "\(data["dateAndTime"] ?? "")"
                let recordKey = document.documentID
                let driverID = "\(data["driverID"] ?? "")"
                let driverName = "\(data["driverName"] ?? "")"
                let drop = "\(data["drop"] ?? "")"
                let pickup = "\(data["pickup"] ?? "")"
                let requestFrom = "\(data["requestFrom"] ?? "")"
                let item = DriverTrips(id: UUID(), dateAndTime: dateAndTime, driverID: driverID, driverName: driverName, drop: drop, pickup: pickup, requestFrom: requestFrom, recoerdKey: recordKey)
                trips.append(item)
            }
            completion(trips)
            KRProgressHUD.dismiss()
        }
    }*/
    func placeNewTripByCustomer(userId:String,pickUp:String,dropOff:String,storagePhotoUrl:String,typeOfShipment:String,notes:String,dateTime:String,timeSlot:String,completion: @escaping ((_ userId:String?,_ error:Error?) -> ())){
        var placeOrderModel:PlaceOrderModel = PlaceOrderModel()
        placeOrderModel.placeOrderDateTime = dateTime
        placeOrderModel.placeOrderTimeSlot = timeSlot
        placeOrderModel.dropoffCity = dropOff
        placeOrderModel.pickupCity = pickUp
        placeOrderModel.userId = userId
        placeOrderModel.shipmentSize = typeOfShipment
        placeOrderModel.imageURL = storagePhotoUrl
        placeOrderModel.desc = notes
        placeOrderModel.orderBookedStatus = "0"
        do {
            let dict:[String:Any] = try FirebaseEncoder().encode(placeOrderModel) as! [String : Any]
            var ref: DocumentReference? = nil
            ref = self.store.collection(self.tableRequests).addDocument(data: dict ) { err in
                if let err = err {
                    print("Error adding document: \(err)")
                    completion(nil,err)
                } else {
                    print("ReferenceID===",ref!.documentID) //now you can work with the ride and know it's ID
                    completion(ref!.documentID ,nil)
                }
            }
        }
        catch{
            print( "Error Occured - placeOrderByCustomer")
            completion(nil,error)
            print(error.localizedDescription )
        }
        
    }
    
    
    func handleSignout (){
        try? Auth.auth().signOut()
        self.isAouthenticatting.toggle()
        self.user=nil
    }
    
    
    private func showLoadingView(){isLoading = true}
    private func hideLoadingView(){isLoading = false}
}
