//
//  MTextField.swift
//  MotoControll
//
//  Created by Polina on 25.11.2023.
//

import SwiftUI

struct MTextField: View {
    @State var word: Binding<String>
    let placeHolder: String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(Color("MotoGray"))
            HStack(){
                TextField(placeHolder,text: word )
                    .padding(10)
                    .background(.white)
                    .cornerRadius(10)
                    .autocorrectionDisabled()
            }
            .frame(width: UIScreen.main.bounds.width - 60)

        }
        .frame(maxWidth: .infinity, maxHeight: 80, alignment: .leading)
    }
}


