//
//  CatedralDetailViewController.swift
//  App_Turismo
//
//  Created by User-UAM on 9/4/24.
//

import UIKit

class CatedralDetailViewController: UIViewController {

   
        @IBOutlet weak var infoLabel: UILabel!
        var infoText: String?  // Variable para recibir datos desde el HomeViewController
        
        override func viewDidLoad() {
            super.viewDidLoad()
            // Configura el texto de la etiqueta con la información recibida
            infoLabel.text = infoText
        }
    
    

        // Do any additional setup after loading the view.
    }


   

