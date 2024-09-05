//
//  HomeCollectionViewCell.swift
//  App_Turismo
//
//  Created by User-UAM on 9/3/24.
//

import UIKit

struct MyCustomStruct {
    
    let myImage : UIImage
    
    let myLabel : String
    
    
}

class HomeCollectionViewCell: UICollectionViewCell {

    
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
        // Asegúrate de que la imagen se centre y ajuste correctamente
           MyImageView.contentMode = .scaleAspectFit
           
           // Configurar restricciones de MyImageView
           MyImageView.translatesAutoresizingMaskIntoConstraints = false
           MyImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
           MyImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
           MyImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
           MyImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true  // Ajusta el tamaño según sea necesario
           
           // Configurar restricciones de MyLabel
           MyLabel.translatesAutoresizingMaskIntoConstraints = false
           MyLabel.topAnchor.constraint(equalTo: MyImageView.bottomAnchor, constant: 8).isActive = true
           MyLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
           MyLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
           MyLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true

        
        
    }

    
    @IBOutlet weak var MyImageView: UIImageView!
    
    @IBOutlet weak var MyLabel: UILabel!
    
    func config(data: MyCustomStruct) {
        MyImageView.image = data.myImage
        MyLabel.text = data.myLabel
        
    }

}
