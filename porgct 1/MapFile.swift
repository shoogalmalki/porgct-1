//
//  MapFile.swift
//  porgct 1
//
//  Created by shoog almalki on 22/11/1443 AH.
//


import MapKit

enum MapDetails {
    static let startingLocation = CLLocationCoordinate2D(latitude: 24.86130, longitude: 46.72556)
    static let defaultSpan = MKCoordinateSpan(latitudeDelta: 2.0,longitudeDelta: 2.0)
}

final class ContentViewModel: NSObject, ObservableObject, CLLocationManagerDelegate {
    
        @Published var region = MKCoordinateRegion(center: MapDetails.startingLocation,
                       span: MapDetails.defaultSpan)
    
    var locationManager: CLLocationManager?
    
func checkIfLocationServicesIsEnabled() {
        if CLLocationManager.locationServicesEnabled() {
            locationManager = CLLocationManager()
            locationManager!.delegate = self
        } else {
            print("Show an alert letting them know this is off and to go to turn it on.")
        }
    }

    private func checkLocationAuthorization() {
        guard let locationManager = locationManager else { return }
        switch locationManager.authorizationStatus {
            
        case .notDetermined:
            locationManager.requestWhenInUseAuthorization()
        case .restricted:
            print("Your location is restricted likely due to parental controls.")
        case .denied:
            print("You have denied this app location permission. go into settings to change it.")
        case .authorizedAlways, .authorizedWhenInUse:
            region = MKCoordinateRegion(center: locationManager.location!.coordinate, span: MapDetails.defaultSpan)
        @unknown default:
            break
        }
    }
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        checkLocationAuthorization()
    }
}
