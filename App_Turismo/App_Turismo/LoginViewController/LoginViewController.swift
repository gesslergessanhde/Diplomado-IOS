//
//  LoginViewController.swift
//  App_Turismo
//
//  Created by User-UAM on 9/3/24.
//

import UIKit

class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var Pasword: UITextField!
    
    @IBOutlet weak var UserName: UITextField!
    
    @IBAction func HomeView(_ sender: Any) {
        
        let username = UserName.text ?? ""
        
        let pasword = Pasword.text ?? ""
        
        if username == "Gessler" && pasword == "tangamandapio" {
            
            let homeViewController = HomeViewController()
            navigationController?.pushViewController(homeViewController, animated: true)
            
        } else{
            
            let alert = UIAlertController(title: "Error", message: "Usuario o contrasena son Incorrectos", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            
            present(alert, animated: true, completion: nil)
            
        }
    }
    
   
    
    
    
}
