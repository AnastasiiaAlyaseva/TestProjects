
import MapKit
import SwiftUI

struct Location: Identifiable {
    let id = UUID()
    var name: String
    var coordinate: CLLocationCoordinate2D
}

struct ContentView: View {
    let locations = [
        Location(name: "Brandenburg Gate", coordinate: CLLocationCoordinate2D(latitude: 52.51627, longitude: 13.377703)),
        Location(name: "Victory Column", coordinate: CLLocationCoordinate2D(latitude: 52.514508, longitude: 13.350111)),
        Location(name: "Berlin TV Tower", coordinate: CLLocationCoordinate2D(latitude: 52.520828, longitude: 13.409421))
    ]
    
    var body: some View {
        VStack {
            Map {
                ForEach(locations) { location in
                    Marker(location.name, coordinate: location.coordinate)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
