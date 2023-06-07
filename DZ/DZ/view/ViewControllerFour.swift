//
//  ViewControllerFour.swift
//  lession7 dz
//
//  Created by Сережа on 23.05.2023.
//

import UIKit

 class ViewControllerAddCar: UIViewController  {

    override func viewDidLoad() {
        super.viewDidLoad()
        configureSubviews()
        createToolbar()
    }
    
  var  hightFromY = 90
    
    private lazy var brendLabel: UILabel = {
       var brendLabel = UILabel()
        brendLabel.frame = CGRect(x: 30, y: hightFromY, width: 150, height: 30)
        brendLabel.font = brendLabel.font.withSize(20)
        brendLabel.textColor = .systemGray
        brendLabel.text = "Марка авто"
        hightFromY += 40
        return brendLabel
    }()
    
    private lazy var brendTextField: UITextField = {
       var brendTextField = UITextField()
        brendTextField.frame = CGRect(x: 30, y: hightFromY, width: 150, height: 30)
        brendTextField.borderStyle = UITextField.BorderStyle.roundedRect
        brendTextField.tintColor = UIColor.systemGray
        hightFromY += 40
        return brendTextField
    }()
    
    private lazy var modelLabel: UILabel = {
       var modelLabel = UILabel()
        modelLabel.frame = CGRect(x: 30, y: hightFromY, width: 150, height: 30)
        modelLabel.font = modelLabel.font.withSize(20)
        modelLabel.textColor = .systemGray
        modelLabel.text = "Модель авто:"
        hightFromY += 40
        return modelLabel
    }()
    
    private lazy var modelTextField: UITextField = {
       var modelTextField = UITextField()
        modelTextField.frame = CGRect(x: 30, y: hightFromY, width: 200, height: 30)
        modelTextField.borderStyle = UITextField.BorderStyle.roundedRect
        modelTextField.tintColor = UIColor.systemGray
        hightFromY += 40
        return modelTextField
    }()
    
    private lazy var colorLabel: UILabel = {
       var colorLabel = UILabel()
        colorLabel.frame = CGRect(x: 30, y: hightFromY, width: 100, height: 30)
        colorLabel.font = colorLabel.font.withSize(20)
        colorLabel.textColor = .systemGray
        colorLabel.text = "Цвет авто:"
        hightFromY += 40
        return colorLabel
    }()
    
    private lazy var colorTextField: UITextField = {
       var colorTextField = UITextField()
        colorTextField.frame = CGRect(x: 30, y: hightFromY, width: 200, height: 30)
        colorTextField.borderStyle = UITextField.BorderStyle.roundedRect
        colorTextField.tintColor = UIColor.systemGray
        colorTextField.addTarget(self, action: #selector(colorFunc(sender:)), for: .touchDown)
        hightFromY += 40
        return colorTextField
    }()
    
    private lazy var yearLabel: UILabel = {
       var yearLabel = UILabel()
        yearLabel.frame = CGRect(x: 30, y: hightFromY, width: 200, height: 30)
        yearLabel.font = yearLabel.font.withSize(20)
        yearLabel.textColor = .systemGray
        yearLabel.text = "Год выпуска авто:"
        hightFromY += 40
        return yearLabel
    }()
    
    private lazy var yearTextField: UITextField = {
       var yearTextField = UITextField()
        yearTextField.frame = CGRect(x: 30, y: hightFromY, width: 200, height: 30)
        yearTextField.borderStyle = UITextField.BorderStyle.roundedRect
        yearTextField.tintColor = UIColor.systemGray
        yearTextField.addTarget(self, action: #selector(yearAction(sender:)), for: .touchDown)
        hightFromY += 40
        return yearTextField
    }()
    
    private lazy var gbddLabel: UILabel = {
       var gbddLabel = UILabel()
        gbddLabel.frame = CGRect(x: 30, y: hightFromY, width: 240, height: 30)
        gbddLabel.font = yearLabel.font.withSize(20)
        gbddLabel.textColor = .systemGray
        gbddLabel.text = "Стоит на учете в гибдд?"
        hightFromY += 40
        return gbddLabel
    }()
    
    private lazy var gbddSwith: UISwitch = {
      var gbddSwith = UISwitch()
        gbddSwith.frame = CGRect(x: 275, y: hightFromY, width: 60, height: 30)
        gbddSwith.addTarget(self, action: #selector(switchIsOn(target:)), for: .valueChanged)
       return gbddSwith
   }()
    
    private lazy var discriptionLabel: UILabel = {
       var discriptionLabel = UILabel()
        discriptionLabel.frame = CGRect(x: 30, y: hightFromY, width: 150, height: 30)
        discriptionLabel.font = discriptionLabel.font.withSize(20)
        discriptionLabel.textColor = .systemGray
        discriptionLabel.text = "Описание:"
        hightFromY += 40
      
        return discriptionLabel
    }()
    
    
    
    private lazy var discriptionTextField: UITextField = {
       var discriptionTextField = UITextField()
        discriptionTextField.frame = CGRect(x: 10, y: hightFromY, width: 280, height: 200)
        discriptionTextField.font = UIFont(name: "HelveticaNeue", size: 12)
        discriptionTextField.tintColor = UIColor.systemGray
        hightFromY += 30
        discriptionTextField.text =
       """
       """
        
        return discriptionTextField
    }()
    
    private lazy var addCarButton: UIButton = {
        var addCarButton = UIButton()
        addCarButton.frame = CGRect(x: 0, y: 750, width: 250, height: 70)
        addCarButton.center.x = view.center.x
        addCarButton.setTitle("Добавить ", for: .normal)
        addCarButton.tintColor = UIColor.white
        addCarButton.backgroundColor = UIColor.red
        addCarButton.layer.cornerRadius = 7
        addCarButton.addTarget(self, action: #selector(addButton), for: .touchUpInside)
      
        return addCarButton
    }()
    
    private func configureSubviews() {
        view.addSubview(brendLabel)
        view.addSubview(brendTextField)
        view.addSubview(modelLabel)
        view.addSubview(modelTextField)
        view.addSubview(colorLabel)
        view.addSubview(colorTextField)
        view.addSubview(addCarButton)
        view.addSubview(yearLabel)
        view.addSubview(yearTextField)
        view.addSubview(discriptionLabel)
        view.addSubview(discriptionTextField)
        view.addSubview(gbddLabel)
        view.addSubview(gbddSwith)
}
    
    @objc func switchIsOn(target: UISwitch) { // потом придумаю если понадобится
                if target.isOn {
        } else {
      }
    }
    
   
    @objc func addButton(_ sender: UIButton) {
        
        let secondVC = ViewControllerListCar()
        self.navigationController?.pushViewController(secondVC, animated: true)
        
        Car.cars.append(Car(brend: self.brendTextField.text ?? "", model: self.modelTextField.text ?? "", year: self.yearTextField.text ?? "", color: self.colorTextField.text ?? "", photo: self.brendLabel.text ?? "", price: self.brendLabel.text ?? "", photos: [""], description: self.discriptionTextField.text ?? ""))
            self.show(secondVC, sender: nil)
        
    }
    
    @objc func yearAction(sender: UITextField) {
        let yearPicker = UIPickerView()
        yearPicker.tag = 1
        sender.inputView = yearPicker
        yearPicker.dataSource = self
        yearPicker.delegate = self
    }
    
    @objc func colorFunc(sender: UITextField) {
        let colorPicker = UIPickerView()
        colorPicker.tag = 0
        sender.inputView = colorPicker
        colorPicker.dataSource = self
        colorPicker.delegate = self
    }
    
    @objc func createToolbar()  {
        let tool = UIToolbar()
        tool.sizeToFit()
        let doneButton = UIBarButtonItem(barButtonSystemItem: .add, target: nil, action: #selector(closeKey))
        tool.setItems([doneButton], animated: true)
        colorTextField.inputAccessoryView = tool
        yearTextField.inputAccessoryView = tool
    }
    
    @objc func closeKey()  {
        view.endEditing(true)
    }
}

extension ViewControllerAddCar: UIPickerViewDataSource, UIPickerViewDelegate {
    func numberOfComponents(in pickerView: UIPickerView) -> Int { 1 }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if pickerView.tag == 0 {
            return 10
        } else {
            return 2023
        }
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if pickerView.tag == 0 {
            let color = ["Blue","White","Black","Yellow","DarkBlue","Red","Pink","Grey","Gold","Silver"]
            let textReturn = color[row]
            colorTextField.text = textReturn
            return textReturn
        } else {
            let stringRow = String(row)
            yearTextField.text = stringRow
            return stringRow
        }
    }
}

extension ViewControllerAddCar: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
  internal  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
    if (info[UIImagePickerController.InfoKey.originalImage] as? UIImage) != nil {
            //photo.image = image
        }
        dismiss(animated: true, completion: nil)
    }
}
