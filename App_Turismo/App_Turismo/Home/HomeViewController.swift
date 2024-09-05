import UIKit

class HomeViewController: UIViewController {
    
    let myCustomModel: [MyCustomStruct] = [
        MyCustomStruct(myImage: UIImage(named: "CatedralL")!, myLabel: "Catedral de Leon"),
        MyCustomStruct(myImage: UIImage(named: "LagoCoc")!, myLabel: "Lago Cocibolca"),
        MyCustomStruct(myImage: UIImage(named: "LagunaAP")!, myLabel: "Laguna de Apoyo"),
        MyCustomStruct(myImage: UIImage(named: "VolcanCN")!, myLabel: "Volcan Cerro Negro"),
        
        MyCustomStruct(myImage: UIImage(named: "CatedralL")!, myLabel: "Catedral de Leon"),
        MyCustomStruct(myImage: UIImage(named: "LagoCoc")!, myLabel: "Lago Cocibolca"),
        MyCustomStruct(myImage: UIImage(named: "LagunaAP")!, myLabel: "Laguna de Apoyo"),
        MyCustomStruct(myImage: UIImage(named: "VolcanCN")!, myLabel: "Volcan Cerro Negro")
        
        
    ]
    
    let myNewCustomModel: [MyNewCustomStruct] = [
        MyNewCustomStruct(myNewImage: UIImage(named: "CasaVi")!, myNewLabel: "Rest Casa Vieja,Leon"),
        MyNewCustomStruct(myNewImage: UIImage(named: "ReservaIM")!, myNewLabel: "Reserva Indio Maiz"),
        MyNewCustomStruct(myNewImage: UIImage(named: "Masaya")!, myNewLabel: "Masaya"),
        MyNewCustomStruct(myNewImage: UIImage(named: "VolcanCN")!, myNewLabel: "Volcan Cerro Negro"),
        
        MyNewCustomStruct(myNewImage: UIImage(named: "CasaVi")!, myNewLabel: "Rest Casa Vieja,Leon"),
        MyNewCustomStruct(myNewImage: UIImage(named: "ReservaIM")!, myNewLabel: "Reserva Indio Maiz"),
        MyNewCustomStruct(myNewImage: UIImage(named: "Masaya")!, myNewLabel: "Masaya"),
        MyNewCustomStruct(myNewImage: UIImage(named: "VolcanCN")!, myNewLabel: "Volcan Cerro Negro")
    ]
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    @IBOutlet weak var myNewCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let layout = myCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.itemSize = CGSize(width: 100, height: 100)
            layout.minimumInteritemSpacing = 10
            layout.minimumLineSpacing = 20
            layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        }
        
        if let layout = myNewCollectionView.collectionViewLayout as? UICollectionViewFlowLayout {
            layout.itemSize = CGSize(width: 100, height: 100)
            layout.minimumInteritemSpacing = 10
            layout.minimumLineSpacing = 20
            layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        }
        
        myCollectionView.register(UINib(nibName: "HomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "homeCell")
        myNewCollectionView.register(UINib(nibName: "NewHomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "newHomeCell")
        
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        
        myNewCollectionView.dataSource = self
        myNewCollectionView.delegate = self
    }
    
    
}



extension HomeViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == myCollectionView {
            return myCustomModel.count
        } else if collectionView == myNewCollectionView {
            return myNewCustomModel.count
        }
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == myCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "homeCell", for: indexPath) as! HomeCollectionViewCell
            cell.config(data: myCustomModel[indexPath.row])
            return cell
        } else if collectionView == myNewCollectionView {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "newHomeCell", for: indexPath) as! NewHomeCollectionViewCell
            cell.config(data: myNewCustomModel[indexPath.row])
            return cell
        }
        return UICollectionViewCell()
    }
    
    
}
