//
//  ListItem.swift
//  MotoControll
//
//  Created by Polina on 02.11.2023.
//

import SwiftUI

struct ListItem: View {
    var item: ListModel = themes[0]
    var body: some View {
        HStack() {
            Text(item.theme)
        }
        .padding(8)
    }
}

#Preview {
    ListItem()
}
