//
//  MProgressBar.swift
//  MotoControll
//
//  Created by Polina on 25.11.2023.
//

import SwiftUI

struct MProgressBar: View {
    @State private var progress = 0.6
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 1)))
            Group{
                ProgressView(value: progress) {
                    HStack{
                        Text("Пройдено")
                            .bold()
                        Text(progress, format: .percent)
                    }
                }
            }
            .frame(width: UIScreen.main.bounds.width - 60)

        }
        .tint(.green)
        .frame(maxWidth: .infinity, maxHeight: 50, alignment: .leading)
    }
}

#Preview {
    MProgressBar()
}
