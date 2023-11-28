//
//  ContentView.swift
//  MotoControll
//
//  Created by Polina on 02.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            Group{
                StartViewMain()
                    .tabItem {
                        Image(systemName: "house.fill")
                        Text("Главная")
                    }
                Exercises()
                    .tabItem {
                        Image(systemName: "figure.outdoor.cycle")
                        Text("Упражениния")
                    }
                Favorities()
                    .tabItem {
                        Image(systemName: "star.fill")
                        Text("Избранное")
                    }
                Settings()
                    .tabItem {
                        Image(systemName: "gearshape.fill")
                        Text("Настройки")
                    }

            }.padding(8)// fix covvering tabbar by list
            .toolbarBackground(.visible, for: .tabBar)
            .toolbarBackground(Color(#colorLiteral(red: 0.3686274588108063, green: 0.364705890417099, blue: 0.364705890417099, alpha: 1)), for: .tabBar)
        }
        .accentColor(.green)
    }
}

#Preview {
    ContentView()
}
