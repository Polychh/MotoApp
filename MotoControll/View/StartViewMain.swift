//
//  StartViewTestst.swift
//  MotoControll
//
//  Created by Polina on 25.11.2023.
//

import SwiftUI

struct StartViewMain: View {
    @State private var idCard: Int = 0
    @State private var path = [ListModel]()
    @State private var word = ""
    var body: some View {
        NavigationStack(path: $path) {
            VStack{
                MTextField(word: $word, placeHolder: "Enter word")
                    .padding(.horizontal, 8)
                MProgressBar()
                    .padding(.horizontal, 8)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16){
                        ForEach(cards) { item in
                            MotoCard(item: item)
                                .onTapGesture {
                                    idCard = item.id
                                    print(item.id)
                                }
                        }
                    }
                    .padding(.horizontal, 8)
                }
                .padding(.vertical, 8)
                List{
                    ForEach(choseList(mainListModel[idCard])) { item in
                        Button(action: {
                            path.append(item)
                            print(path)
                        }, label: {
                            ListItem(item: item)
                        })
        //                NavigationLink(value: item) {
        //                    ListItem(item: item)
        //                }
                        .listRowSeparator(.hidden)
                        .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))

                    }
                }
                .listStyle(.plain)
                //.navigationTitle("MotoControl")
                .navigationDestination(for: ListModel.self) { theme in
                    detailViews(theme)
                }
            }

      }
    }
    

    func choseList(_ themeArray: ListModelAll) -> [ListModel]{
        switch themeArray.id{
        case 0: themeArray.themeArray
        case 1: themeArray.themeArray
        case 2: themeArray.themeArray
        default:
            themeArray.themeArray
        }
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
    StartViewMain()
}


