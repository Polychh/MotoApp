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

var listModelAll: [ListModelAll] = [ListModelAll(id: 0, themeArray: themes), ListModelAll(id: 1, themeArray: themes1), ListModelAll(id: 0, themeArray: themes2)]

var exercisesListModel: [ListModelAll] = [ListModelAll(id: 0, themeArray: exercisesTheme), ListModelAll(id: 1, themeArray: exercisesTheme1), ListModelAll(id: 0, themeArray: exercisesTheme2)]

