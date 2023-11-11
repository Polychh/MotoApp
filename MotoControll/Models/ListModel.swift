//
//  ListModel.swift
//  MotoControll
//
//  Created by Polina on 03.11.2023.
//

import Foundation

struct ListModel: Identifiable, Hashable{
    let id: Int
    let theme: String
}

var themes: [ListModel] = [ListModel(id: 0, theme: "Теория"),ListModel(id: 1, theme: "Как поднять упавший мотоцикл?"),ListModel(id: 2, theme: "Посадка на мотоцикле"),ListModel(id: 3, theme: "Постановка взгляда"),ListModel(id: 4, theme: "Расслабленные руки"),ListModel(id: 5, theme: "Серая зона сцепления"),ListModel(id: 6, theme: "Контрруление"),ListModel(id: 7, theme: "Торможение с абс"),ListModel(id: 8, theme: "Контрсвешивание"),ListModel(id: 9, theme: "Какую передачу выбрать?"),ListModel(id: 10, theme: "Интенсивный разгон"),ListModel(id: 11, theme: "Переключение передач"),ListModel(id: 12, theme: "Торможение при повороте"),ListModel(id: 13, theme: "Резина мотоцикла"),ListModel(id: 14, theme: "Подвеска мотоцикла")]
var themes1: [ListModel] = [ListModel(id: 0, theme: "Дорожная стратегия"),ListModel(id: 1, theme: "Как ездить на мотоцикле в городе"),ListModel(id: 2, theme: "Работа со взглядом"),ListModel(id: 3, theme: "Правило 12 секунд"),ListModel(id: 4, theme: "Безопасная дистанция"),ListModel(id: 5, theme: "Траектория прохождения поворотов"),ListModel(id: 6, theme: "3 ошибки в траектории поворотов"),ListModel(id: 7, theme: "Как тормозить в повороте?"),ListModel(id: 8, theme: "ДТП на перекрестках"),ListModel(id: 9, theme: "Продольные препятствия на мотоцикле"),ListModel(id: 10, theme: "Междурядье")]
var themes2: [ListModel] = [ListModel(id: 0, theme: "МЕДЛЕННОЕ МАНЕВРИРОВАНИЕ"),ListModel(id: 1, theme: "ТОРМОЖЕНИЕ"), ListModel(id: 2, theme: "СКОРОСТНОЕ МАНЕВРИРОВАНИЕ")]
