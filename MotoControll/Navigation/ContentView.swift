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
            StartView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Главная")
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
//            Blog()
//                .tabItem {
//                    Image(systemName: "gearshape.fill")
//                    Text("Настройки")
//                }
        }
    }
}

#Preview {
    ContentView()
}
