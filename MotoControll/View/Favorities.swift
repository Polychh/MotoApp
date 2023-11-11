//
//  Favorites.swift
//  MotoControll
//
//  Created by Polina on 03.11.2023.
//

import SwiftUI

struct Favorities: View {
    var body: some View {
        NavigationView {
            List{
                ForEach(0..<10) { item in
                    ListItemFavorite()
                }
            }
            .navigationTitle("Избранное")
        }
    }
}

#Preview {
    Favorities()
}
