//
//  ImageDetail.swift
//  MotoControll
//
//  Created by Polina on 03.11.2023.
//

import SwiftUI

struct ImageDetail: View {
    var image: String
    var body: some View {
        Image(image)
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(maxWidth: .infinity)
            .frame(height: 100)
    }
}

#Preview {
    ImageDetail(image: "Moto2")
}
