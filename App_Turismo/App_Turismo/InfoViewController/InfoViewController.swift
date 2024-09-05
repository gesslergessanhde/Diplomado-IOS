//
//  InfoViewController.swift
//  App_Turismo
//
//  Created by User-UAM on 9/4/24.
//

import UIKit

class InfoViewController: UIViewController {
    
    
    @IBOutlet weak var InfoLabel: UILabel!
    
    var infoText: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        InfoLabel.text = infoText
    }


   
}
