//
//  ListItemFavorite.swift
//  MotoControll
//
//  Created by Polina on 03.11.2023.
//

import SwiftUI

struct ListItemFavorite: View {
    var body: some View {
        HStack() {
            Text("Избранное")
            Spacer()
            Image(systemName: "star.fill")
        }
        .padding(8)
    }
}

#Preview {
    ListItemFavorite()
}
