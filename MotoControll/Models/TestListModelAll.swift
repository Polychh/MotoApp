//
//  TestListModelAll.swift
//  MotoControll
//
//  Created by Polina on 09.11.2023.
//

import Foundation

struct TestListModelAll: Identifiable, Hashable{
    let id: Int
    let themeArray: [ListModel]
}

var listModelAll: [TestListModelAll] = [TestListModelAll(id: 0, themeArray: themes), TestListModelAll(id: 1, themeArray: themes1), TestListModelAll(id: 0, themeArray: themes2)]
