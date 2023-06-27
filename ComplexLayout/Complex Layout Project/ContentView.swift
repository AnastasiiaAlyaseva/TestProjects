//
//  ContentView.swift
//  Complex Layout Project
//
//  Created by Anastasiia Alyaseva on 03.04.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 1, green: 0.9, blue: 0.8)
                .ignoresSafeArea(.all)
            VStack{
                Text("Shopping list")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .padding(.top,50)
                HStack{
                    VStack{
                        Text("Fruits")
                            .font(.system(size: 30))
                            .fontWeight(.semibold)
                            .padding(.bottom, 20)
                        Text("🍍 Pineapples")
                            .font(.system(size: 20))
                        Text("🍋 Lemons")
                            .font(.system(size: 20))
                        Text("🥭 Mango")
                            .font(.system(size: 20))
                    }
                    .padding(.horizontal, 20)
                    VStack{
                        Text("Vegetables")
                            .font(.system(size: 30))
                            .fontWeight(.semibold)
                            .padding(.bottom, 20)
                        Text("🥒 Cucumbers")
                            .font(.system(size: 20))
                        Text("🌽 Corn")
                            .font(.system(size: 20))
                        Text("🥕 Carrots")
                            .font(.system(size: 20))
                    }
                    .padding(.horizontal, 10)
                }
                .padding()
                
                HStack {
                    VStack {
                        Text("Meat")
                            .font(.system(size: 30))
                            .fontWeight(.semibold)
                            .padding(.bottom, 20)
                        Text("🍗 Chicken")
                            .font(.system(size: 20))
                        Text("🥓 Bacon")
                            .font(.system(size: 20))
                        Text("🥩 Steak")
                            .font(.system(size: 20))
                    }
                    .padding(.horizontal, 20)
                    VStack {
                        Text("Dairy")
                            .font(.system(size: 30))
                            .fontWeight(.semibold)
                            .padding(.bottom, 20)
                        Text("🥚 Eggs")
                            .font(.system(size: 20))
                        Text("🧀 Cheese")
                            .font(.system(size: 20))
                        Text("🥛 Milk")
                            .font(.system(size: 20))
                    }
                    .padding(.horizontal, 20)
                }
                Button(action: {
                    print("Add item button tapped")
                }) {
                    Text("Add Item")
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                }
                .padding(.top, 50)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
