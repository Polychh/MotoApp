////
////  TestStartView.swift
////  MotoControll
////
////  Created by Polina on 09.11.2023.
////
//
//import SwiftUI
//
//struct TestStartView: View {
//    @State var idCard: Int = 0
//    var body: some View {
//    NavigationStack {
//        ScrollView(.horizontal, showsIndicators: false) {
//            HStack(spacing: 16){
//                ForEach(cards) { item in
//                    MotoCard(item: item)
//                        .onTapGesture {
//                            idCard = item.id
//                            print(item.id)
//                        }
//                }
//            }
//            .padding(.horizontal, 20)
//        }
//        .padding(.vertical, 10)
//        List{
//            ForEach(choseList(listModelAll[idCard])) { item in
//                NavigationLink(value: item) {
//                    Text("\(item.theme)")
//                }
//                
//            }
//        }
//        .navigationTitle("MotoControl")
//        .navigationDestination(for: ListModel.self) { theme in
//            detailViews(theme)
//        }
//      }
//    }
//    
//
//    func choseList(_ themeArray: TestListModelAll) -> [ListModel]{
//        switch themeArray.id{
//        case 0: themeArray.themeArray
//        case 1: themeArray.themeArray
//        case 2: themeArray.themeArray
//        default:
//            themeArray.themeArray
//        }
//    }
//    
//    func detailViews(_ theme: ListModel) -> some View{
//        Group{
//            switch theme.id{
//            case 1: DetailView(titleName: theme.theme)
//            case 2: DetailView1()
//            default:
//                MotoCard()
//            }
//        }
//    }
//}
//
//
//#Preview {
//    TestStartView()
//}
