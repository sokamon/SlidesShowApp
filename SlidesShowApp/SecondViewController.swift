//
//  SecondViewController.swift
//  SlidesShowApp
//
//  Created by sokamoto on 2016/05/18.
//  Copyright © 2016年 shinichi.okamoto. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var imageViewBig: UIImageView!
    
    var image : UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        imageViewBig.image = image
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
