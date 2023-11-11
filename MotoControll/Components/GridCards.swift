//
//  GridCards.swift
//  MotoControll
//
//  Created by Polina on 02.11.2023.
//

import SwiftUI

struct GridCards: View {
    var item: CardModel = cards[2]
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: item.image)
                .symbolRenderingMode(.monochrome)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .frame(height: 100)
                .padding(15)
            Text(item.hesdText)
                .font(.headline)
        }
        .foregroundStyle(.white)
        .padding(30)
        .background(LinearGradient(
                        gradient: Gradient(stops: [
                    .init(color: Color(#colorLiteral(red: 0.20000000298023224, green: 0.20000000298023224, blue: 0.6000000238418579, alpha: 1)), location: 0),
                    .init(color: Color(#colorLiteral(red: 1, green: 0, blue: 0.800000011920929, alpha: 1)), location: 1)]),
                        startPoint: UnitPoint(x: 0, y: 0.5),
                        endPoint: UnitPoint(x: 0.9999999999999999, y: 0.4999999999999999)))
        .frame(height: 222)
        .cornerRadius(30)
    }
}

#Preview {
    GridCards()
}
