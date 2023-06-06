//
//  Model.swift
//  DZ
//
//  Created by Сережа on 05.06.2023.
//

import Foundation

final class Car {
var brend: String
var model: String
var year: String
var color: String
var photo: String
var price: String
var photos: [String]
var description: String
    
    init(brend: String, model: String, year: String, color: String, photo: String, price: String, photos: [String], description: String) {
        self.brend = brend
        self.model = model
        self.year = year
        self.color = color
        self.photo = photo
        self.price = price
        self.photos = photos
        self.description = description
    }
}

extension Car {
  static var cars: [Car] = [Car(brend: "Toyota", model: "Rav4", year: "2014", color: "Blue", photo: "ravBlue.jpg", price: "2100000p", photos: ["rav1.jpg", "rav2.jpg", "rav3.jpg", "rav4.jpg","rav5.jpg","rav6.jpg"],
                                         description:
                                         """
                                          Продаю новый автомобиль,пробег 86 км, съездили два раза до МРЭО на нем,остальное время стоял в гараже. Стоят легкосплавные диски с летней резиной,есть штамповка штатная без зимней резины,установлен регистратор,коврики в салоне и багажнике. Все вопросы по телефону,торг у капота
                                         """),
                                                      Car(brend: "Toyota", model: "Rav4", year: "2009", color: "Gold",photo: "ravGold.jpg", price: "1100000p", photos: [""], description: "2"),
                                                      Car(brend: "Toyota", model: "Alphard", year: "2004", color: "White",photo: "Alphard.jpeg", price: "1300000p", photos: [""], description: "3")]
}

//var cars: [Car] = Car.cars
