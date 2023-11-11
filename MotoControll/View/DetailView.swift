//
//  DetailView.swift
//  MotoControll
//
//  Created by Polina on 02.11.2023.
//

import SwiftUI

struct DetailView: View {
    var titleName: String
    var body: some View {
        ScrollView {
            VideoDetail()
            VStack(alignment: .leading, spacing: 10) {
                Text(titleName)
                    .font(.largeTitle)
                    .bold()
                TextDetail(text: detailTheme1.info1)
                    .padding(.bottom, 10)
                Text(detailTheme1.title2)
                    .font(.headline)
                TextDetail(text: detailTheme1.info2)
                    .padding(.bottom, 10)
                Text(detailTheme1.title3)
                    .font(.headline)
                TextDetail(text: detailTheme1.mark1)
                HStack {
                    TextDetail(text: detailTheme1.mark2)
                    ImageDetail(image: "Moto1")
                }
                TextDetail(text: detailTheme1.mark3)
                TextDetail(text: detailTheme1.mark4)
                TextDetail(text: detailTheme1.mark5)
                TextDetail(text: detailTheme1.info3)
                Text( detailTheme1.info4)
                    .font(.headline)
                    .padding(5)
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    DetailView(titleName: detailTheme1.title1)
}
