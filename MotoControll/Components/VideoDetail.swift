//
//  Video.swift
//  MotoControll
//
//  Created by Polina on 03.11.2023.
//

import SwiftUI

struct VideoDetail: View {
    var body: some View {
        VStack(spacing: 16) {
            Image(systemName: "movieclapper")
                .symbolRenderingMode(.monochrome)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(maxWidth: .infinity)
                .frame(height: 100)
            Text("ВИДЕО")
                .font(.title)
        }
        .foregroundStyle(.indigo)
        .padding(.all)
        .background(LinearGradient(
            gradient: Gradient(stops: [
                .init(color: Color(#colorLiteral(red: 0.08627451211214066, green: 0.7490196228027344, blue: 0.9921568632125854, alpha: 1)), location: 0),
                .init(color: Color(#colorLiteral(red: 0.7960784435272217, green: 0.1882352977991104, blue: 0.4000000059604645, alpha: 1)), location: 1)]),
            startPoint: UnitPoint(x: 0, y: 0.5),
            endPoint: UnitPoint(x: 0.9999999999999999, y: 0.4999999999999999)))
    }
}

#Preview {
    VideoDetail()
}
