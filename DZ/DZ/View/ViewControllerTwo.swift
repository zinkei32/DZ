//
//  ViewControllerTwo.swift
//  DZ
//
//  Created by Сережа on 07.06.2023.
//

import UIKit

class ViewControllerSelectPizzaSushi: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
        title = "Food"

        
    }
    private lazy var pizzaButton: UIButton = {
        var pizzaButton = UIButton(type: .roundedRect)
    pizzaButton.frame = CGRect(x: 0, y: 140, width: 300, height: 100)
    pizzaButton.center.x = view.center.x
    pizzaButton.tintColor = UIColor.systemBlue
    pizzaButton.addTarget(self, action: #selector(pizzaButtonAction(target:)), for: .touchUpInside)
    pizzaButton.setTitle("Pizza", for: .normal)
    pizzaButton.layer.cornerRadius = 7
        pizzaButton.backgroundColor = UIColor.systemGray
      
        
        
    return pizzaButton
    }()

    private lazy var sushiButton: UIButton = {
        var sushiButton = UIButton(type: .roundedRect)
        sushiButton.frame = CGRect(x: 0, y: 270, width: 300, height: 100)
        sushiButton.tintColor = UIColor.systemBlue
        sushiButton.center.x = view.center.x
        sushiButton.addTarget(self, action: #selector(pizzaButtonAction(target:)), for: .touchUpInside)
        sushiButton.setTitle("Sushi", for: .normal)
        sushiButton.layer.cornerRadius = 7
        sushiButton.backgroundColor = UIColor.systemGray
        return sushiButton
    }()
    
    @objc  func  configureViews() {
        view.addSubview(pizzaButton)
        view.addSubview(sushiButton)
    }
    
    @objc func pizzaButtonAction(target: UIButton) {
        let nextVS = ViewControllerPizza()
        self.navigationController?.pushViewController(nextVS, animated: true)
    }
    
}
