//
//  ContentView.swift
//  Closures
//
//  Created by Anastasiia Alyaseva on 21.04.2023.
//

import SwiftUI

struct User: Identifiable {
    let id : UUID
    let name : String
}

struct ContentView : View{

    @State private var searchQuery : String = " "

    @State private var users : [User] = [
        User(id: UUID(), name: "The Awesome Developer"),
        User(id: UUID(), name: "Anastasiia"),
        User(id: UUID(), name: "Do you know her?"),
        User(id: UUID(), name: "She's Awesome!"),
    ]

    private var filteredUsers : [User] {
        if searchQuery.isEmpty{
            return users
        } else{
            return users.filter{ $0.name.lowercased().contains(searchQuery.lowercased())}
        }
    }

    var body : some View{
        VStack{
            TextField("Search Users...", text: $searchQuery)
                .padding(EdgeInsets(top: 8, leading: 10, bottom: 8, trailing: 10))
                .background(Color(.systemCyan))
                .cornerRadius(8)
                .padding(EdgeInsets(top: 8, leading: 10, bottom: 8, trailing: 10))

            List(filteredUsers){
                user in Text(user.name)
            }
        }
    }
}

struct ContentView_Previews : PreviewProvider{
    static var previews: some View{
        ContentView()
    }
}

//struct User: Определение структуры User с двумя свойствами: id (типа UUID) и name (типа String).
//
//struct ContentView: Основная структура, которая представляет пользовательский интерфейс.
//
//@State private var searchQuery: Свойство для хранения текста поискового запроса.
//
//@State private var users: Массив пользователей, которые будут отображаться в списке.
//
//private var filteredUsers: Вычисляемое свойство, которое возвращает отфильтрованный массив пользователей на основе текста поискового запроса.
//
//var body: Описание пользовательского интерфейса, состоящего из текстового поля для поиска и списка, который отображает отфильтрованных пользователей.
//
//struct ContentView_Previews: Структура, предоставляющая предварительный просмотр ContentView для панели Canvas в Xcode.
//
//В этом коде реализован пользовательский интерфейс с текстовым полем для поиска и списком пользователей. При вводе текста в поле поиска список пользователей фильтруется на основе поискового запроса. Закрытие используется в функции filter, чтобы определить, какие пользователи соответствуют поисковому запросу. Функция filter возвращает новый массив только с пользователями, имена которых содержат поисковый запрос, и представление списка отображает отфильтрованных пользователей.
//
//Когда вы запускаете это приложение, вы увидите поле поиска в верхней части экрана и список пользователей ниже. При вводе текста в поле поиска список пользователей обновляется, отображая только пользователей, соответствующих поисковому запросу.


