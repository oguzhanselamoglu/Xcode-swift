//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by oğuzhan selamoğlu on 24.04.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    var imageChanged = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        
        
        imageView.addGestureRecognizer(gestureRecognizer)
    }
    
    @objc func changePic() {
        var name = "metalica"
        
        if imageChanged {
           name = "metalica2"
            imageChanged=false
        }else {
            imageChanged = true
        }
        
        
        imageView.image = UIImage(named: name)
        myLabel.text = name
    }


}

