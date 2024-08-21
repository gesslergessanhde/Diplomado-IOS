//
//  ViewController.swift
//  Tarea vista
//
//  Created by User-UAM on 8/16/24.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

   
    @IBOutlet weak var Numero: UILabel!
    
    @IBOutlet weak var Presionar: UIButton!
    
    @IBOutlet weak var bordes: UIView!
    
    var counter : Int = 5000
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        Numero.text = "\(counter)"
               Presionar.setTitle("Presionar", for: .normal)

    }
    
    func setupView(){
        bordes.layer.cornerRadius = 10
        
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
            counter += 1
            Numero.text = "\(counter)"
        }
    
    

}

