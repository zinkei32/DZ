//
//  ViewControllerTwo.swift
//  lession7 dz
//
//  Created by Сережа on 18.05.2023.
//

import UIKit

class ViewControllerListCar: UIViewController {

    override func viewDidLoad() {
         super.viewDidLoad()
         addCar()
         configureSubviews()
     }
     
    
  var cars: [Car] = Car.cars
    
     private func addCar() {
         var heightPrice = 10

        for (index, value) in cars.enumerated() {
            makeUI(height: heightPrice, index: index, car: value)
            heightPrice += 140
        }
    }
    
    
    private func makeUI(height: Int, index: Int, car: Car) {
                   
           let btn = UIButton()
           btn.tag = index
           let image = UIImageView()
           image.image = UIImage(named: car.photo)
           btn.setImage(UIImage(named: car.photo), for: .normal)
           btn.frame = CGRect(x: 30, y: height, width: 150, height: 120)
           btn.backgroundColor = UIColor.blue
           btn.layer.cornerRadius = 9
          btn.addTarget(self, action: #selector(buttonType), for: .touchUpInside)
           view.addSubview(btn)
           let brendlabel = UILabel()
           brendlabel.textColor = .black
           brendlabel.text = car.brend
           brendlabel.frame = CGRect(x: 185, y: height, width: 140, height: 40)
           brendlabel.font = brendlabel.font.withSize(20)
           view.addSubview(brendlabel)
           
           let modellabel = UILabel()
           modellabel.textColor = .black
           modellabel.text = car.model
           modellabel.frame = CGRect(x: 270, y: height, width: 140, height: 40)
           modellabel.font = modellabel.font.withSize(20)
           view.addSubview(modellabel)
     
           let colorlabel = UILabel()
           colorlabel.textColor = .black
           colorlabel.text = car.color
           colorlabel.frame = CGRect(x: 185, y: height + 30, width: 140, height: 40)
           colorlabel.font = colorlabel.font.withSize(16)
           view.addSubview(colorlabel)
           
           let pricelabel = UILabel()
           pricelabel.textColor = .black
           pricelabel.text = car.price
           pricelabel.frame = CGRect(x: 270, y: height + 30, width: 140, height: 40)
           pricelabel.font = pricelabel.font.withSize(16)
           view.addSubview(pricelabel)
       }

    
    private lazy var addCarButton: UIButton = {
        var addCarButton = UIButton()
        addCarButton.frame = CGRect(x: 0, y: 630, width: 250, height: 70)
        addCarButton.center.x = view.center.x
        addCarButton.setTitle("Добавить авто", for: .normal)
        addCarButton.tintColor = UIColor.white
        addCarButton.backgroundColor = UIColor.red
        addCarButton.layer.cornerRadius = 7
        addCarButton.addTarget(self, action: #selector(addCar(sender:)), for: .touchUpInside)
      
        return addCarButton
    }()
    
    
    
private func configureSubviews() {
    view.addSubview(addCarButton)
}
    
    @objc func addCar(sender: UIButton) {
        
        let play = UIStoryboard(name: "Main", bundle: nil)
        guard let nextScreen = play.instantiateViewController(identifier: "viewFour") as? ViewControllerAddCar else { return }
        self.present(nextScreen, animated: true, completion: nil)
        nextScreen.modalPresentationStyle = .automatic
 
    }
    
    
    @objc func buttonType(_ sender: UIButton) {
        
        let play = UIStoryboard(name: "Main", bundle: nil)
        guard let nextScreen = play.instantiateViewController(identifier: "viewThree") as? ViewControllerDescriptionCar else { return }
        self.present(nextScreen, animated: true, completion: nil)
        nextScreen.modalPresentationStyle = .automatic
        nextScreen.car = cars[sender.tag]
    }
}
    
//    var cars: [Car] = [Car(brend: "Toyota", model: "Rav4", year: "2014", color: "Blue", photo: "ravBlue.jpg", price: "2100000p", photos: ["rav1.jpg", "rav2.jpg", "rav3.jpg", "rav4.jpg","rav5.jpg","rav6.jpg"],
//        description:
//        """
//         Продаю новый автомобиль,пробег 86 км, съездили два раза до МРЭО на нем,остальное время стоял в гараже. Стоят легкосплавные диски с летней резиной,есть штамповка штатная без зимней резины,установлен регистратор,коврики в салоне и багажнике. Все вопросы по телефону,торг у капота
//        """),
//                     Car(brend: "Toyota", model: "Rav4", year: "2009", color: "Gold",photo: "ravGold.jpg", price: "1100000p", photos: [""], description: "2"),
//                     Car(brend: "Toyota", model: "Alphard", year: "2004", color: "White",photo: "Alphard.jpeg", price: "1300000p", photos: [""], description: "3")]
//}
//
//struct Car {
//var brend: String
//var model: String
//var year: String
//var color: String
//var photo: String
//var price: String
//var photos: [String]
//var description: String
//
//}
//
//    
