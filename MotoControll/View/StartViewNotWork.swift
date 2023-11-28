//
//  StartView.swift
//  MotoControll
//
//  Created by Polina on 02.11.2023.
//

import SwiftUI

struct StartViewNotWork: View {
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16){
                        ForEach(cards) { item in
                            NavigationLink(value: item) {
                                MotoCard(item: item)
                            }
//                            NavigationLink(destination: ListView()){
//                                MotoCard(item: item)
//                            }
                        }
                    }
                    .padding(.horizontal, 20)
                }
                .padding(.vertical, 10)

                VStack {
                    Button {
                       print("Tapped")
                    } label: {
                        ButtonStartNotWork(image: "play.rectangle.fill", text: "YouTube")
                    }
                    Button {
                       print("Tapped")
                    } label: {
                        ButtonStartNotWork(image: "questionmark.square.fill", text: "FAQ")
                    }
                    Button {
                       print("Tapped")
                    } label: {
                        ButtonStartNotWork(image: "ellipsis.bubble.fill", text: "Блог")
                    }
                }
            }
            .navigationTitle("MotoControl")
            .navigationDestination(for: CardModel.self) { block in
                listViews(block)
            }
        }
    }
    
    func listViews(_ block: CardModel) -> some View{
        Group{
            switch block.id{
            case 0: ListView()
            default:
                MotoCard()
            }
        }
    }

}

#Preview {
    StartViewNotWork()
}


//                LazyVGrid(columns: [GridItem(.adaptive(minimum: 150), spacing: 10)], spacing: 20) {
//                    ForEach(cards) { item in
//                        NavigationLink(destination: ListView()){
//                            GridCards(item: item)
//                        }
//                    }
//                }
