//
//  ContentView.swift
//  AspectRatio
//
//  Created by Anastasiia Alyaseva on 03.04.2023.
//

import SwiftUI

struct ContentView: View {
    let imageName = ["mountins", "sky", "sunset", "forest"]
    let texts = ["Text 1", "Text 2","Text 3", "Text 4"]
    
    var body: some View {
        
        ScrollView{
            VStack(spacing: 20) {
                ImageGridView(images: imageName)
                TextListView_(texts: texts)
            }
            .padding(.bottom)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
