//
//  MotoCard.swift
//  MotoControll
//
//  Created by Polina on 02.11.2023.
//

import SwiftUI

struct MotoCard: View {
    var item: CardModel = cards[1]
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: item.image)
                .symbolRenderingMode(.monochrome)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .frame(height: 100)
                .padding(5)
            Text(item.hesdText)
                .font(.title)
            Text(item.text)
                .font(.callout)
                .opacity(0.7)
                .padding(.horizontal, 10)
                .padding(.bottom, 15)
        }
        .foregroundStyle(.indigo)
        .padding(.all)
        .background(LinearGradient(
            gradient: Gradient(stops: [
        .init(color: Color(#colorLiteral(red: 0.07058823853731155, green: 1, blue: 0.9686274528503418, alpha: 1)), location: 0),
        .init(color: Color(#colorLiteral(red: 0.7019608020782471, green: 1, blue: 0.6705882549285889, alpha: 1)), location: 1)]),
            startPoint: UnitPoint(x: 0, y: 0.5),
            endPoint: UnitPoint(x: 0.9999999999999999, y: 0.4999999999999999)))
        .frame(width: 229, height: 389)
        .cornerRadius(30)
    }
}

#Preview {
    MotoCard()
}
