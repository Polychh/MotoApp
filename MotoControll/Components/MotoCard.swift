//
//  MotoCard.swift
//  MotoControll
//
//  Created by Polina on 02.11.2023.
//

import SwiftUI

struct MotoCard: View {
    var item: CardModel = exercisesCards[0]
    var body: some View {
        
        ZStack{
            RoundedRectangle(cornerRadius: 12)
                .fill(Color(#colorLiteral(red: 0.8509804010391235, green: 0.8509804010391235, blue: 0.8509804010391235, alpha: 1)))
            VStack(alignment: .center){
                Image(systemName: item.image)
                    .symbolRenderingMode(.monochrome)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 66, height: 66)
                Text(item.headText)
                    .multilineTextAlignment(.center)
                    .font(.custom("Golos Text Medium", size: 14))
                    .lineLimit(2)
            }
            .foregroundStyle(.black)
            //.padding(.all)
             
        }
        .frame(width: 130, height: 130)
    }
    
 
}

#Preview {
    MotoCard()
}
