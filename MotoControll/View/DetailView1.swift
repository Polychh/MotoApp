//
//  DetailView1.swift
//  MotoControll
//
//  Created by Polina on 03.11.2023.
//

import SwiftUI

struct DetailView1: View {
    var body: some View {
        ScrollView {
            VideoDetail()
            VStack(alignment: .leading, spacing: 10){
                TextDetail(text: detailTheme2.info)
                Text(detailTheme2.title1)
                    .font(.headline)
                TextDetail(text: detailTheme2.info1)
                    .padding(.bottom, 10)
                Text(detailTheme2.title2)
                    .font(.headline)
                TextDetail(text: detailTheme2.info2)
                    .padding(.bottom, 10)
                HStack {
                    Text(detailTheme2.title3)
                        .font(.headline)
                    ImageDetail(image: "Moto2")
                }
                TextDetail(text: detailTheme2.info3)

                Text(detailTheme2.title4)
                    .font(.headline)
                TextDetail(text: detailTheme2.info4)
                HStack {
                    Text(detailTheme2.title5)
                        .font(.headline)
                    ImageDetail(image: "Moto3")
                }
                TextDetail(text: detailTheme2.info5)
                Text(detailTheme2.title6)
                    .font(.headline)
                TextDetail(text: detailTheme2.mark1)
                TextDetail(text: detailTheme2.mark2)
                TextDetail(text: detailTheme2.mark3)
                TextDetail(text: detailTheme2.mark4)
                Text(detailTheme2.info6)
                    .font(.headline)
                    .padding(5)
            }
            .padding(.horizontal)
        }
    }
}

#Preview {
    DetailView1()
}
