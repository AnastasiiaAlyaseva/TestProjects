
import PhotosUI
import SwiftUI

struct ContentView: View {
    //    @State private var pickerItem: PhotosPickerItem?
    //    @State private var selectedImage: Image?
    @State private var pickerItems = [PhotosPickerItem]()
    @State private var selectedImages = [Image]()
    
    var body: some View {
        VStack {
            PhotosPicker(selection: $pickerItems, maxSelectionCount: 3, matching: .any(of: [.images, .not(.screenshots)])) {
                Label("Select a picture" , systemImage: "photo")
            }
            
            //            selectedImage?
            //                .resizable()
            //                .scaledToFit()
            
            ScrollView {
                ForEach(0..<selectedImages.count, id: \.self) { item in
                    selectedImages[item]
                        .resizable()
                        .scaledToFill()
                }
            }
        }
        .onChange(of: pickerItems) {
            Task {
                //                selectedImage = try await pickerItem?.loadTransferable(type: Image.self)
                selectedImages.removeAll()
                
                for item in pickerItems {
                    if let loadedImage = try await item.loadTransferable(type: Image.self) {
                        selectedImages.append(loadedImage)
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
