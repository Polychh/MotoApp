//
//  TextDetail.swift
//  MotoControll
//
//  Created by Polina on 03.11.2023.
//

import SwiftUI

struct TextDetail: View {
    let text: String
    var body: some View {
        Text(text)
            .font(.callout)
            .opacity(0.7)
            .padding(.horizontal, 5)
    }
}

#Preview {
    TextDetail(text: "* Далее, если мотоцикл лежит на правом боку – выстави подножку и убедитесь, что мотоцикл стоит на передаче.")
}
