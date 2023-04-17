//
//  ViewController.swift
//  imagePickerControler
//
//  Created by R87 on 15/12/22.
//

import UIKit

class ViewController: UIViewController {

  
   
    @IBOutlet weak var surNameLabel: UILabel! //1
    @IBOutlet weak var nameLabel: UILabel!  //2
    @IBOutlet weak var loginButton: UIButton!  //3
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
        setup()
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
}

