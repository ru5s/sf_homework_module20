//
//  ShowImageVC.swift
//  sc_houmwork_module_20
//
//  Created by Ruslan Ismailov on 07/07/22.
//

import UIKit



class ShowImageVC: UIViewController {

    
    @IBOutlet weak var currentImage: UIImageView!
    
    var imageName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        currentImage.image = UIImage(named: imageName)
    }
    
    func setImageName(argument : String){
        imageName = argument
    }
  
}
