//
//  ViewController.swift
//  DZ
//
//  Created by Сережа on 05.06.2023.
//

import UIKit

class ViewControllerStart: UIViewController {

   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureSubviews()
        
    }

    
    private lazy var showButton: UIButton = {
        var showButton = UIButton()
        let image = UIImageView()
        showButton.frame = CGRect(x: 180, y: 531, width: 28, height: 28)
        showButton.setImage(UIImage(named: "eyeshow.png"), for: .normal)
        showButton.tintColor = UIColor.systemGray
        showButton.addTarget(self, action: #selector(showPasswordFunc), for: .touchUpInside)
        return showButton
    }()
    
    private lazy var signInButton: UIButton = {
        var signInButton = UIButton(type: .roundedRect)
        signInButton.frame = CGRect(x: 0, y: 630, width: 250, height: 70)
        signInButton.center.x = view.center.x
        signInButton.setTitle("Вход", for: .normal)
        signInButton.tintColor = UIColor.white
        signInButton.backgroundColor = UIColor.blue
        signInButton.layer.cornerRadius = 7
        signInButton.addTarget(self, action: #selector(signinButton), for: .touchUpInside)
      
        return signInButton
    }()
    
    private lazy var pizzaSaleImage: UIImageView = {
        var pizzaSaleImage = UIImageView()
        pizzaSaleImage.frame = CGRect(x: 0, y: 80, width: 200, height: 200)
        pizzaSaleImage.center.x = view.center.x
        pizzaSaleImage.image = UIImage(named: "Pizza.jpeg")
        return pizzaSaleImage
    }()
    
    private lazy var textSale: UILabel = {
        var textSale = UILabel()
        textSale.frame = CGRect(x: 0, y: 300, width: 250, height: 50)
        textSale.center.x = view.center.x
        textSale.text = "Пицца нормас"
        textSale.font = textSale.font.withSize(26)
        
        return textSale
    }()
    
    
    private lazy var loginLabel: UILabel = {
       var loginLabel = UILabel()
        loginLabel.frame = CGRect(x: 20, y: 400, width: 200, height: 20)
        loginLabel.text = "Your phone number:"
        loginLabel.textColor = UIColor.systemGray
        
        return loginLabel
    }()

    private lazy var passwordLabel: UILabel = {
       var passwordLabel = UILabel()
        passwordLabel.frame = CGRect(x: 20, y: 500, width: 200, height: 20)
        passwordLabel.text = "Your passowrd:"
        passwordLabel.textColor = UIColor.systemGray
        
        return passwordLabel
    }()
    
    private lazy var emailTextField: UITextField = {
       var emailTextField = UITextField()
        emailTextField.frame = CGRect(x: 20, y: 430, width: 300, height: 30)
        emailTextField.borderStyle = UITextField.BorderStyle.roundedRect
        emailTextField.tintColor = UIColor.systemGray
        emailTextField.placeholder = "Вводить только цифры"
        return emailTextField
    }()
    
    private lazy var passwordTextField: UITextField = {
       var passwordTextField = UITextField()
        passwordTextField.frame = CGRect(x: 20, y: 530, width: 300, height: 30)
        passwordTextField.borderStyle = UITextField.BorderStyle.roundedRect
        passwordTextField.tintColor = UIColor.systemGray
        
        return passwordTextField
    }()
    
    // MARK: добавление во вьюдидлок
    private func configureSubviews() {
        view.addSubview(passwordLabel)
        view.addSubview(loginLabel)
        view.addSubview(emailTextField)
        view.addSubview(passwordTextField)
        view.addSubview(pizzaSaleImage)
        view.addSubview(textSale)
        view.addSubview(signInButton)
        view.addSubview(showButton)

    }
    
    //MARK: Функции
    @IBAction func signinButton(_ sender: UIButton) {
        let name = emailTextField.text
        let password = passwordTextField.text
        
        if name != "Serg" || password != "0000"  {
            let alert = UIAlertController(title: "Че-то не так", message: "Нормальный логин и пароль введи", preferredStyle: .alert)
            let alertOK = UIAlertAction(title: "Понял", style: .default)
            alert.addAction(alertOK)
            self.present(alert, animated: true, completion: nil)
        } else {
            let nextVC = ViewControllerSelectPizzaSushi()
            self.navigationController?.pushViewController(nextVC, animated: true)
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first as? UITouch {
            view.endEditing(true)
        }
        super.touchesBegan(touches, with: event)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    
    @IBAction func showPasswordFunc(_ sender: UIButton) {
        if passwordTextField.isSecureTextEntry {
            passwordTextField.isSecureTextEntry = false
        } else {
            passwordTextField.isSecureTextEntry = true
        }
    }

    
}

