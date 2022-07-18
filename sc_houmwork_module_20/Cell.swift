//
//  Cell.swift
//  sc_houmwork_module_20
//
//  Created by Ruslan Ismailov on 07/07/22.
//

import UIKit

class Cell: UICollectionViewCell {
    
    @IBOutlet weak var temperatureImage: UIImageView!
    @IBOutlet weak var smileImage: UIImageView!
    
    func setTemperatureImage(image: String) {
        let imageView = UIImage(named: image)
        temperatureImage.image = imageView
    }
    
    func setSmileImage(image: String){
        let imageView = UIImage(named: image)
        smileImage.image = imageView
    }
}
