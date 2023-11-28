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
        
        ZStack{
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 1)))
            HStack() {
                Text(item.theme)
                Spacer()
            }
            .padding(8)
        }
        .frame(maxWidth: .infinity, maxHeight: 40)
        //.frame(width: .infinity, height: 40)
        .padding(.horizontal, 8)
    }
}

#Preview {
    ListItem()
}
