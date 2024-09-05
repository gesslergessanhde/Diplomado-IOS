//
//  NewHomeCollectionViewCell.swift
//  App_Turismo
//
//  Created by User-UAM on 9/4/24.
//

import UIKit


struct MyNewCustomStruct {
    
    let myNewImage : UIImage
    
    let myNewLabel: String
    
}

class NewHomeCollectionViewCell: UICollectionViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Asegúrate de que la imagen se centre y ajuste correctamente
           MyNewImageView.contentMode = .scaleAspectFit
           
           // Configurar restricciones de MyImageView
           MyNewImageView.translatesAutoresizingMaskIntoConstraints = false
           MyNewImageView.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
           MyNewImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
           MyNewImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
           MyNewImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true  // Ajusta el tamaño según sea necesario
           
           // Configurar restricciones de MyLabel
           MyNewLabel.translatesAutoresizingMaskIntoConstraints = false
           MyNewLabel.topAnchor.constraint(equalTo: MyNewImageView.bottomAnchor, constant: 8).isActive = true
           MyNewLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10).isActive = true
           MyNewLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10).isActive = true
           MyNewLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -10).isActive = true

        
    }
    
    
    
    @IBOutlet weak var MyNewImageView: UIImageView!
    
    @IBOutlet weak var MyNewLabel: UILabel!
    
    
    
    func config(data: MyNewCustomStruct) {
        MyNewImageView.image = data.myNewImage
        MyNewLabel.text = data.myNewLabel
        
    }
    

}
