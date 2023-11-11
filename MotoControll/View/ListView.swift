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
                ForEach(themes) { item in
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
            case 1: DetailView(titleName: theme.theme)
            case 2: DetailView1()
            default:
                MotoCard()
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
