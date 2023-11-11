//
//  TestWrapTextImage.swift
//  MotoControll
//
//  Created by Polina on 04.11.2023.
//

import SwiftUI

struct TestWrapTextImage: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Text("Секрет правильной посадки мотоциклиста состоит из нескольких важных аспектов, которые стоит рассмотреть по-отдельности. Обрати внимание, что каждая составляющая одинаково необходима для достижения отличного результата. Поэтому, не стоит пренебрегать ни одним пунктом, изложенным ниже. Итак, перейдём к делу.")
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.trailing, geometry.size.width / 5)

                Image("Moto1")
                    .resizable()
                    .scaledToFit()
                    .frame(width: geometry.size.width / 5, height: geometry.size.height / 5)
                   
            }
        }
        //        ZStack(alignment: .topLeading){
        //            Image("Moto1")
        //                .resizable()
        //                .scaledToFit()
        //                .frame(width: 200,height: 200)
        //            Text("Секрет правильной посадки мотоциклиста состоит из нескольких важных аспектов, которые стоит рассмотреть по-отдельности. Обрати внимание, что каждая составляющая одинаково необходима для достижения отличного результата. Поэтому, не стоит пренебрегать ни одним пунктом, изложенным ниже. Итак, перейдём к делу.")
        //                .font(.body)
        //                .foregroundStyle(.black)
        //                .offset(x:110,y: 0)
        //                .padding(.horizontal)
        //        }
    }
}

#Preview {
    TestWrapTextImage()
}
