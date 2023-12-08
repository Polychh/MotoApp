//
//  ListItem.swift
//  MotoControll
//
//  Created by Polina on 02.11.2023.
//

import SwiftUI

struct ListItem: View {
    var item: ListModel = themesTheory[0]
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                RoundedRectangle(cornerRadius: 12)
                    .fill(LinearGradient(
                        gradient: Gradient(stops: [
                            .init(color: Color(#colorLiteral(red: 0.9997395873069763, green: 0.4456608295440674, blue: 0.14859411120414734, alpha: 1)), location: 0),
                            .init(color: Color(#colorLiteral(red: 0.9997395873069763, green: 0.4456608295440674, blue: 0.14859411120414734, alpha: 0)), location: 1)]),
                        startPoint: UnitPoint(x: -7.450582066859206e-9, y: 0.49999995172023315),
                        endPoint: UnitPoint(x: 0.9999999925494168, y: 0.49999985516069767)))
                
                    .frame(width: geometry.size.width)
                    .background {
                        Image("imageList")
                        
                            .resizable()
                            //.padding(.bottom, -50)
//
//                            .aspectRatio(CGSize(width:geometry.size.width, height: geometry.size.height), contentMode: .fit)
                            .scaledToFill()
                            //.frame(width: geometry.size.width)
                            .opacity(0.8)
                            
                    }
                    .clipped()
                    .cornerRadius(12)

                VStack(alignment: .leading){
                    HStack() {
                        Text(item.theme)
                            .bold()
                            .font(.title3)
                        Spacer()
                    }

                    .padding(.top, 8)
                    Text("""
                    Информация о каждой теме подробно,
                    ограничение 2 строки
                    """)
                    .fixedSize(horizontal: false, vertical: true)
                    .lineLimit(2)
                    .font(.callout)
                }
                .padding(.horizontal, 8)
                .padding(.bottom, 8)
                .foregroundStyle(.white)

                
            }
        }
        .frame(height: 80)
        .padding(.horizontal, 8)
    }
}

#Preview {
    ListItem()
}
