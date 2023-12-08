//
//  TestListModelAll.swift
//  MotoControll
//
//  Created by Polina on 09.11.2023.
//

import Foundation

struct ListModelAll: Identifiable, Hashable{
    let id: Int
    let themeArray: [ListModel]
}

var mainListModel: [ListModelAll] = [ListModelAll(id: 0, themeArray: themesTheory), ListModelAll(id: 1, themeArray: themesStrategy), ListModelAll(id: 0, themeArray: themesBlog)]

var exercisesListModel: [ListModelAll] = [ListModelAll(id: 0, themeArray: exercisesTheme), ListModelAll(id: 1, themeArray: exercisesTheme1), ListModelAll(id: 0, themeArray: exercisesTheme2)]

