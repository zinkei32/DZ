//
//  ViewControllerDescription.swift
//  DZ
//
//  Created by Сережа on 07.06.2023.
//

import UIKit

class ViewControllerDescription: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()
        view.backgroundColor = .white

    }
    
    private lazy var pizzaLabel: UILabel = {
        var pizzaLabel = UILabel()
        var firstVC = ViewControllerPizza()
        pizzaLabel.frame = CGRect(x: 0, y: 30, width: 200, height: 40)
        pizzaLabel.text = firstVC.margoLabel.text
        pizzaLabel.font = pizzaLabel.font.withSize(27)
        pizzaLabel.center.x = view.center.x
        
        return pizzaLabel
    }()

    private lazy var pizzaImage: UIImageView = {
    var pizzaImage = UIImageView(frame: CGRect(x: 0, y: 100, width: 250, height: 250))
    var image = UIImage(named: "Pizza.jpeg")
        pizzaImage.image = image
        pizzaImage.contentMode = .scaleAspectFit
        pizzaImage.center.x = view.center.x

        return pizzaImage
    }()
    
    private lazy var cheeseLabel: UILabel = {
        var cheeseLabel = UILabel()
        cheeseLabel.frame = CGRect(x: 20, y: 370, width: 200, height: 30)
        cheeseLabel.font = cheeseLabel.font.withSize(16)
        cheeseLabel.text = "Сыр мацарелла"
      
        return cheeseLabel
    }()
    
    private lazy var hamLabel: UILabel = {
        var hamLabel = UILabel()
        hamLabel.frame = CGRect(x: 20, y: 430, width: 200, height: 30)
        hamLabel.font = hamLabel.font.withSize(16)
        hamLabel.text = "Ветчина"
        return hamLabel
    }()
    
    private lazy var mushroomsLabel: UILabel = {
        var mushroomsLabel = UILabel()
        mushroomsLabel.frame = CGRect(x: 20, y: 490, width: 200, height: 30)
        mushroomsLabel.font = mushroomsLabel.font.withSize(16)
        mushroomsLabel.text = "Грибы"
        return mushroomsLabel
    }()
    
    private lazy var maslinLabel: UILabel = {
        var maslinLabel = UILabel()
        maslinLabel.frame = CGRect(x: 20, y: 550, width: 200, height: 30)
        maslinLabel.font = maslinLabel.font.withSize(16)
        maslinLabel.text = "Маслины"
        return maslinLabel
    }()
    
    private lazy var hamSwith: UISwitch = {
      var hamSwith = UISwitch()
        hamSwith.frame = CGRect(x: 220, y: 433, width: 40, height: 30)
        hamSwith.addTarget(self, action: #selector(humSwitchAction(target:)), for: .valueChanged)
       return hamSwith
   }()
    
    private lazy var cheeseSwith: UISwitch = {
      var cheeseSwith = UISwitch()
        cheeseSwith.frame = CGRect(x: 220, y: 370, width: 40, height: 30)
        //cheeseSwith.addTarget(self, action: #selector(humSwitchAction(target:)), for: .valueChanged)
       return cheeseSwith
   }()
    
    private lazy var mushroomsSwith: UISwitch = {
      var mushroomsSwith = UISwitch()
        mushroomsSwith.frame = CGRect(x: 220, y: 493, width: 40, height: 30)
        //mushroomsSwith.addTarget(self, action: #selector(humSwitchAction(target:)), for: .valueChanged)
       return mushroomsSwith
   }()
    
    private lazy var maslinSwith: UISwitch = {
      var maslinSwith = UISwitch()
        maslinSwith.frame = CGRect(x: 220, y: 550, width: 40, height: 30)
       // maslinSwith.addTarget(self, action: #selector(humSwitchAction(target:)), for: .valueChanged)
       return maslinSwith
   }()
    
    
    private lazy var selectButton: UIButton = {
        var selectButton = UIButton(type: .roundedRect)
        selectButton.frame = CGRect(x: 0, y: 630, width: 250, height: 70)
        selectButton.center.x = view.center.x
        selectButton.setTitle("Добавить", for: .normal)
        selectButton.tintColor = UIColor.white
        selectButton.backgroundColor = UIColor.orange
        selectButton.layer.cornerRadius = 7
        selectButton.addTarget(self, action: #selector(selectButtonAction(target:)), for: .touchUpInside)
        return selectButton
    }()
    
    
    
    @objc func configureView() {
        view.addSubview(pizzaImage)
        view.addSubview(pizzaLabel)
        view.addSubview(maslinLabel)
        view.addSubview(mushroomsLabel)
        view.addSubview(hamLabel)
        view.addSubview(cheeseLabel)
        view.addSubview(selectButton)
        view.addSubview(hamSwith)
        view.addSubview(cheeseSwith)
        view.addSubview(mushroomsSwith)
        view.addSubview(maslinSwith)
    }
    
    @objc func humSwitchAction(target: UISwitch) {
        if target.isOn {
            let nextVC = ViewControllerPaying()
            nextVC.hamLabel1.text = "С ветчиной"
        } else {
            let nextVC = ViewControllerPaying()
            nextVC.hamLabel1.text = ""
        }
    }
    
    
    @objc func selectButtonAction(target: UIButton) {

        humSwitchAction(target: hamSwith)
        
        self.dismiss(animated: true, completion: nil)
       
        
    }

}
