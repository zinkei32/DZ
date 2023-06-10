//
//  ViewControllerPaying.swift
//  DZ
//
//  Created by Сережа on 07.06.2023.
//

import UIKit

class ViewControllerPaying: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureView()

        title = "Оплата"
        
    }
    
       private lazy var yourLabel: UILabel = {
        var yourLabel = UILabel()
            yourLabel.frame = CGRect(x: 50, y: 100, width: 200, height: 30)
            yourLabel.font = yourLabel.font.withSize(24)
            yourLabel.text = "Ваш заказ:"
        return yourLabel
    }()
    
    private lazy var pizzaLabel: UILabel = {
     var pizzaLabel = UILabel()
        pizzaLabel.frame = CGRect(x: 50, y: 150, width: 200, height: 30)
        pizzaLabel.font = pizzaLabel.font.withSize(20)
        pizzaLabel.text = "Пицца моцарелла"
     return pizzaLabel
    }()
    
        private lazy var cheeseLabel: UILabel = {
         var cheeseLabel = UILabel()
            cheeseLabel.frame = CGRect(x: 50, y: 190, width: 200, height: 30)
            cheeseLabel.font = cheeseLabel.font.withSize(16)
            cheeseLabel.text = "1."
         return cheeseLabel
            
        }()
    
             lazy var hamLabel1: UILabel = {
             var hamLabel = UILabel()
                hamLabel.frame = CGRect(x: 50, y: 230, width: 200, height: 30)
                hamLabel.font = hamLabel.font.withSize(16)
                hamLabel.text = "2."
             return hamLabel
            }()
    
                private lazy var mashroomLabel: UILabel = {
                 var mashroomLabel = UILabel()
                    mashroomLabel.frame = CGRect(x: 50, y: 270, width: 200, height: 30)
                    mashroomLabel.font = mashroomLabel.font.withSize(16)
                    mashroomLabel.text = "3."
                 return mashroomLabel
                }()
    
    
    private lazy var payingButton: UIButton = {
        var payingButton = UIButton(type: .roundedRect)
        payingButton.frame = CGRect(x: 0, y: 730, width: 250, height: 70)
        payingButton.center.x = view.center.x
        //selectButton.setTitle("Добавить", for: .normal)
        payingButton.setImage(UIImage(systemName: "applelogo"), for: .normal)
        //payingButton.tintColor = UIColor.white
        payingButton.backgroundColor = UIColor.black
        payingButton.layer.cornerRadius = 7
        payingButton.addTarget(self, action: #selector(payingButtonAction(target:)), for: .touchUpInside)
        return payingButton
    }()
    
    @objc func payingButtonAction(target: UIButton) {
//         let nextVC = ViewControllerPaying()
//        self.navigationController?.pushViewController(nextVC, animated: true)
        
        let alertController = UIAlertController(title: "Заказ оплачен!", message: "Ваш заказ доставят в течении 15 мин! Приятного аппетита", preferredStyle: .alert)
           
        let action = UIAlertAction(title: "OK", style: .default) { (action) in
            let nextVC = ViewControllerSelectPizzaSushi()
           self.navigationController?.pushViewController(nextVC, animated: true)
            
           }
        
           alertController.addAction(action)
           self.present(alertController, animated: true, completion: nil)
   }
        
    
    
    
    @objc func configureView() {
        view.addSubview(pizzaLabel)
        view.addSubview(cheeseLabel)
        view.addSubview(hamLabel1)
        view.addSubview(mashroomLabel)
        view.addSubview(yourLabel)
        view.addSubview(payingButton)
//        view.addSubview(selectButton)
    }
    
}
