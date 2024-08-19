
import MapKit
import SwiftUI

struct ContentView: View {
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 52.517037, longitude: 13.38886), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
    )
    
    
    var body: some View {
        VStack {
            Map(position: $position)
                .mapStyle(.hybrid(elevation: .realistic))
                .onMapCameraChange(frequency: .continuous) { context in
                    print(context.region)
                }
            
            HStack(spacing: 50){
                Button("Barselona") {
                    position = MapCameraPosition.region(
                        MKCoordinateRegion(
                            center: CLLocationCoordinate2D(latitude: 41.382894, longitude: 2.177432), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
                    )
                }
                
                Button("Paris") {
                    position = MapCameraPosition.region(MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 48.85889, longitude: 2.320041), span: MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1))
                    )
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
