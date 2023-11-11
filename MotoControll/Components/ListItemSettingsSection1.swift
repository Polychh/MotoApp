//
//  ListItemSettings.swift
//  MotoControll
//
//  Created by Polina on 03.11.2023.
//

import SwiftUI

struct ListItemSettingsSection1: View {
    var text: String
    @State private var vibrateOnRing = false
    var body: some View {
        HStack() {
            Spacer()
            Toggle(isOn: $vibrateOnRing) {
                Text(text)
            }
        }
        .padding(8)
    }
}

#Preview {
    ListItemSettingsSection1(text: "Settings")
}
