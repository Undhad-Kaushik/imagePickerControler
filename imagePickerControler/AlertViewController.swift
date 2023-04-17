//
//  AlertViewController.swift
//  imagePickerControler
//
//  Created by R87 on 15/12/22.
//

import UIKit

class AlertViewController: UIViewController {

    @IBOutlet weak var loginButtonSecond: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var surNameLabel: UITextField!
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var surNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.

    
    setup()
        getSetup()
}


private func setup(){
    nameLabel.text = " First Name: KAushik"
    surNameLabel.text = "Surname: Undhad"


    nameLabel.textColor = .gray
    nameLabel.textAlignment = .left
    nameLabel.backgroundColor = .yellow
//        nameLabel.layer.cornerRadius = 10
//        nameLabel.layer.borderWidth = 1
//        nameLabel.layer.masksToBounds = true
//        nameLabel.layer.borderColor = UIColor.red.cgColor
    
    surNameLabel.textColor = .gray
    surNameLabel.textAlignment = .left
    surNameLabel.backgroundColor = .yellow
//        surNameLabel.layer.cornerRadius = 10
//        surNameLabel.layer.borderWidth = 2
//        surNameLabel.layer.masksToBounds = true
//        surNameLabel.layer.borderColor = UIColor.red.cgColor
//
    [nameLabel,surNameLabel].forEach{
        setCornerRadious(view: $0, cornerRadious: 10)
        setBorder(view: $0, color: .red, width: 1)
    }
}

    func setCornerRadious(view: UIView?, cornerRadious: CGFloat){
        view?.layer.cornerRadius = cornerRadious
        view?.layer.masksToBounds = true
    }
    
    func setBorder(view: UIView? , color: UIColor , width: CGFloat){
        view?.layer.borderColor = color.cgColor
        view?.layer.borderWidth = width
    }
    
    
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        loginButton.setTitle("Login Login", for: .normal)
        [nameLabel,surNameLabel,loginButton].forEach{
            $0?.backgroundColor = .blue
    }
    
    }
    
    //******************
    
    private func getSetup(){
        [nameTextField,surNameLabel,loginButtonSecond].forEach{
            setCornerRedius(view: $0, cornerRedious: 10)
        }
        
    

    }
    @IBAction func NextLoginButtonTapped(_ sender: UIButton) {
//        if nameTextField.text == ""{
//
//        }
            displayActionsheet()
    }
    
    private func disPlayValidation(messege: String){
        let alert: UIAlertController = UIAlertController(title: "Error", message: messege, preferredStyle: .alert)
        
        let okButton: UIAlertAction = UIAlertAction(title: "okey", style: .default){ button in
            print("okey Button Tapped")
        }
        
        let extraButton: UIAlertAction = UIAlertAction(title: "Extra Button", style: .default)
        let cancelbutton: UIAlertAction = UIAlertAction(title: "cancel", style: .cancel)
        alert.addAction(okButton)
        alert.addAction(extraButton)
        alert.addAction(cancelbutton)
        present(alert, animated: true, completion: nil)
    }
    
    private func displayActionsheet(){
        let alert: UIAlertController = UIAlertController(title: "colere colou", message: "kevo colur", preferredStyle: .actionSheet)
        let yellowButton: UIAlertAction = UIAlertAction(title: "yellow", style: .default) { Button in
            self.loginButtonSecond.backgroundColor = .yellow
            self.view.backgroundColor = .gray
            
        }
        
        let redButton: UIAlertAction = UIAlertAction(title: "red", style: .default) { Button in
            self.loginButtonSecond.backgroundColor = .red
            self.view.backgroundColor = .blue
            
        }
        
        let greenButton: UIAlertAction = UIAlertAction(title: "green", style: .default) { Button in
            self.loginButtonSecond.backgroundColor = .green
            self.view.backgroundColor = .black
            
        }
        
        let cancelButton2: UIAlertAction = UIAlertAction(title: "cancel", style: .cancel)
        alert.addAction(yellowButton)
        alert.addAction(redButton)
        alert.addAction(greenButton)
        
        alert.addAction(cancelButton2)
        
        present(alert, animated: true, completion: nil)
        
        
    }
    
    func setCornerRedius(view: UIView , cornerRedious: CGFloat){
        view.layer.cornerRadius = cornerRedious
        view.layer.masksToBounds = true
    }
}
