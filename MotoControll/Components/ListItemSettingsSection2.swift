//
//  ListItemSettingsSection2.swift
//  MotoControll
//
//  Created by Polina on 03.11.2023.
//

import SwiftUI

struct ListItemSettingsSection2: View {
    var text: String
    var body: some View {
        HStack {
            Text(text)
            Spacer()
            Image(systemName: "chevron.right")
        }
    }
}

#Preview {
    ListItemSettingsSection2(text: "Пользовательское соглашение")
}
