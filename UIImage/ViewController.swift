//
//  ViewController.swift
//  UIImage
//
//  Created by tyobigoro on 2020/04/07.
//  Copyright © 2020 tyobigoro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    let imageView = UIImageView()
    
    var isVisible: Bool = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.frame = CGRect(x: 0, y: 0, width: 40, height: 40)
        
        imageView.image = UIImage(named: "sample")
        
        imageView.contentMode = .scaleToFill
        
    }

    @IBAction func addImageView(_ sender: UITapGestureRecognizer) {
        
        if isVisible {
            
            imageView.removeFromSuperview()
            
        } else {
            
            imageView.center = sender.location(in: self.view)
            
            self.view.addSubview(imageView)
            
        }
    }
    
}

