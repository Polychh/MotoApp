//
//  Blog.swift
//  MotoControll
//
//  Created by Polina on 03.11.2023.
//

import SwiftUI

struct Exercises: View {
    @State private var idCard: Int = 0
    @State private var path = [ListModel]()
    var body: some View {
        NavigationStack(path: $path) {
            VStack{
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 16){
                        ForEach(exercisesCards) { item in
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
                    ForEach(choseList(exercisesListModel[idCard])) { item in
                        Button(action: {
                            path.append(item)
                            print(path)
                        }, label: {
                            ListItem(item: item)
                        })
                        .listRowSeparator(.hidden)
                        .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))

                    }
                }
                .listStyle(.plain)
                .navigationTitle("Упражнения")
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
    Exercises()
}
