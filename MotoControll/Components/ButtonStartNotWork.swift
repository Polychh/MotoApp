//
//  Button.swift
//  MotoControll
//
//  Created by Polina on 03.11.2023.
//

import SwiftUI

struct ButtonStartNotWork: View {
    var image: String
    var text: String
    var body: some View {
            HStack(alignment: .center) {
                Image(systemName: image)
                Text(text)
                    .bold()
            }
            .frame(width: UIScreen.main.bounds.width / 1.1, height: 60)
            .background(LinearGradient(
                gradient: Gradient(stops: [
            .init(color: Color(#colorLiteral(red: 0.20000000298023224, green: 0.20000000298023224, blue: 0.6000000238418579, alpha: 1)), location: 0),
            .init(color: Color(#colorLiteral(red: 1, green: 0, blue: 0.800000011920929, alpha: 1)), location: 1)]),
                startPoint: UnitPoint(x: 0, y: 0.5),
                endPoint: UnitPoint(x: 0.9999999999999999, y: 0.4999999999999999)))
            .font(.title2)
            .foregroundStyle(.white)
            .cornerRadius(30)
    }
}

#Preview {
    ButtonStartNotWork(image: "play.rectangle.fill", text: "Youtube")
}
