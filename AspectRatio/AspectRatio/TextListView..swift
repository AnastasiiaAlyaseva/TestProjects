//
//  TextListView..swift
//  AspectRatio
//
//  Created by Anastasiia Alyaseva on 03.04.2023.
//

import SwiftUI

struct TextListView_: View {
    let texts: [String]
    
    var body: some View {
        
        ScrollView{
            VStack(alignment: .leading, spacing: 10) {
                ForEach(texts, id: \.self) { text in
                    Text(text)
                        .font(.headline)
                        .padding(.horizontal)
                }
                .padding()
            }
        }
    }
}

struct TextListView__Previews: PreviewProvider {
    static var previews: some View {
        TextListView_(texts: ["Text 1", "Text 2","Text 3", "Text 4"])
    }
}
