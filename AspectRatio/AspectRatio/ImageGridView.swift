//
//  ImageGridView.swift
//  AspectRatio
//
//  Created by Anastasiia Alyaseva on 03.04.2023.
//

import SwiftUI

struct ImageGridView: View {
    let images: [String]
    var body: some View {
        let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
        ScrollView{
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(images, id:\.self) { imageName in
                    Image(imageName)
                        .resizable()
                        .scaledToFit()
                }
            }
            .padding()
        }
    }
}

struct ImageGridView_Previews: PreviewProvider {
    static var previews: some View {
        ImageGridView(images: ["mountins", "sky", "sunset", "forest"])
    }
}
