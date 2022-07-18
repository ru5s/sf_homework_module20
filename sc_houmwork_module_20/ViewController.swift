//
//  ViewController.swift
//  sc_houmwork_module_20
//
//  Created by Ruslan Ismailov on 07/07/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionViewOne: UICollectionView!
    
    @IBOutlet weak var collectionViewTwo: UICollectionView!
    

    
    
    let arrayTemperature = ["temp.green", "temp.blackGreen", "temp.lightYellow", "temp.darkYellow", "temp.orange", "temp.red"]
    
    let arraySmile = ["nice", "favorite", "routine", "notPleasant", "bad", "hate"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionViewOne.delegate = self
        collectionViewOne.dataSource = self
        
        collectionViewTwo.delegate = self
        collectionViewTwo.dataSource = self

        
        // Do any additional setup after loading the view.
    }


}

extension ViewController: UICollectionViewDelegate{
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        guard let vc = storyboard?.instantiateViewController(withIdentifier: "ShowImageVC") as? ShowImageVC else {return}
        var currentSetImage: String!
        
        if collectionView == collectionViewOne{
            currentSetImage = arrayTemperature[indexPath.row]
        }
        if collectionView == collectionViewTwo{
            currentSetImage = arraySmile[indexPath.row]
        }
        
        vc.setImageName(argument: currentSetImage)
        present(vc, animated: true, completion: nil)
    }
}


extension ViewController: UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
//        return arrayTemperature.count
        
        if collectionView == collectionViewOne {
            return arrayTemperature.count
        }
        if collectionView == collectionViewTwo {
            return arraySmile.count
        }
        return 0
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if collectionView == collectionViewOne{
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellOne", for: indexPath) as? Cell{
                let imageView = arrayTemperature[indexPath.row]
                cell.setTemperatureImage(image: imageView)
                return cell
            }
        }
        
        if collectionView == collectionViewTwo{
            if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellTwo", for: indexPath) as? Cell{
                let imageView = arraySmile[indexPath.row]
                cell.setSmileImage(image: imageView)
                return cell
            }
        }
        
        
        return UICollectionViewCell()
    }
    
    
}
