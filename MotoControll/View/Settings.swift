//
//  Settings.swift
//  MotoControll
//
//  Created by Polina on 03.11.2023.
//

import SwiftUI

struct Settings: View {
    var body: some View {
        NavigationView {
            List{
                Section{
                    ListItemSettingsSection1(text: "Выбор темы")
                } header: {
                    Text("Выбирите тему")
                } footer: {
                    HStack {
                        Spacer()
                        Text("Светлая/Темная")
                    }
                }
                Section{
                    ListItemSettingsSection2(text:"Очистить избранное")
                    ListItemSettingsSection2(text: "Обратная связь")
                    ListItemSettingsSection2(text: "Пользовательское соглашение")
                }
            }
            .navigationTitle("Настройки")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    Settings()
}
