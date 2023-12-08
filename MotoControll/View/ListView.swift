//
//  ListView.swift
//  MotoControll
//
//  Created by Polina on 02.11.2023.
//

import SwiftUI

struct ListView: View {
    @State private var show: Bool = false
    @State private var currentItem: ListModel?
    var body: some View {
        //NavigationStack {
            List{
                ForEach(themesTheory) { item in
                    NavigationLink(value: item) {
                        Text("\(item.theme)")
                    }
                }
            }
            .navigationTitle("Теория")
            .navigationDestination(for: ListModel.self) { theme in
                detailViews(theme)
            }
       // }
    }
    
    func detailViews(_ theme: ListModel) -> some View{
        Group{
            switch theme.id{
            case 0: DetailView(titleText: theoryTheory.title, bodyText: theoryTheory.body)
            case 1: DetailView(titleText: theoryUpMoto.title, bodyText: theoryUpMoto.body)
            case 2: DetailView(titleText: theorySitMoto.title, bodyText: theorySitMoto.body)
            default:
                DetailView(titleText: theoryTheory.title, bodyText: theoryTheory.body)
            }
        }
    }
}

#Preview {
    ListView()
}


//                        .sheet(isPresented: $show, content: {
//                            if let item = currentItem {
//                                switch item.id {
//                                case 1: DetailView()
//                                case 2: DetailView1()
//                                default:
//                                    MotoCard()
//                                }
//                            }
//                        })
//                        .onTapGesture {
//                            currentItem = item
//                            show.toggle()
//                        }
