//
//  ViewControllerPizza.swift
//  DZ
//
//  Created by Сережа on 07.06.2023.
//

import UIKit

class ViewControllerPizza: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
        title = "Pizza"
        
    }
    
    @objc func margoAction (target: UIButton) {
        
        let nextVC = ViewControllerDescription()
        let pp = ViewControllerPaying()
        self.navigationController?.pushViewController(pp, animated: true)
        self.navigationController!.present(nextVC, animated: true, completion: nil)
      
    }
    
    
    private lazy var margoAddButton: UIButton = {
      var margoAddButton = UIButton()
        margoAddButton.setImage(UIImage(systemName: "plus"), for: .normal)
        margoAddButton.frame = CGRect(x: 350, y: hightLabelsFromY, width: 40, height: 40)
        margoAddButton.backgroundColor = UIColor.orange
        margoAddButton.layer.cornerRadius = 7
        margoAddButton.addTarget(self, action: #selector(margoAction (target:)), for: .touchUpInside)
        
        return margoAddButton
    }()
    
    private lazy var pepeAddButton: UIButton = {
      var pepeAddButton = UIButton()
        pepeAddButton.setImage(UIImage(systemName: "plus"), for: .normal)
        pepeAddButton.frame = CGRect(x: 350, y: hightLabelsFromY + 100, width: 40, height: 40)
        pepeAddButton.backgroundColor = UIColor.orange
        pepeAddButton.layer.cornerRadius = 7

        
        return pepeAddButton
    }()
    
    var hightLabelsFromY = 120
    
    lazy var margoLabel: UILabel = {
      var margoLaber = UILabel()
        margoLaber.text = "Маргарита"
        margoLaber.frame = CGRect(x: 0, y: hightLabelsFromY, width: 130, height: 40)
        margoLaber.center.x = view.center.x
        margoLaber.font = margoLaber.font.withSize(20)
        
        return margoLaber
    }()

    private lazy var pepeLabel: UILabel = {
      var pepeLabel = UILabel()
        pepeLabel.text = "Пеперонни"
        pepeLabel.frame = CGRect(x: 0, y: hightLabelsFromY + 100, width: 130, height: 40)
        pepeLabel.center.x = view.center.x
        pepeLabel.font = pepeLabel.font.withSize(20)
        return pepeLabel
    }()
    
    private lazy var margoImage: UIImageView = {
    var margoImage = UIImageView(frame: CGRect(x: 30, y: 100, width: 90, height: 90))
    var image = UIImage(named: "Unknown.jpeg")
    margoImage.image = image
    margoImage.contentMode = .scaleAspectFit

        return margoImage
    }()
    
    private lazy var pepeImage: UIImageView = {
    var pepeImage = UIImageView(frame: CGRect(x: 30, y: 200, width: 90, height: 90))
    var image = UIImage(named: "Unknown.jpeg")
        pepeImage.image = image
        pepeImage.contentMode = .scaleAspectFit

        return pepeImage
    }()

    @objc func configureViews() {
        view.addSubview(margoLabel)
        view.addSubview(pepeLabel)
        view.addSubview(margoImage)
        view.addSubview(pepeImage)
        view.addSubview(margoAddButton)
        view.addSubview(pepeAddButton)
    }
    
}
