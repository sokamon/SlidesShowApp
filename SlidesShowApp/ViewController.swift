//
//  ViewController.swift
//  SlidesShowApp
//
//  Created by sokamoto on 2016/05/17.
//  Copyright © 2016年 shinichi.okamoto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageViewSmall: UIImageView!

    var x: Int = 1
    var timer: NSTimer?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    let img1: UIImage = UIImage(named:"image1.jpg")!
    let img2: UIImage = UIImage(named:"image2.jpg")!
    let img3: UIImage = UIImage(named:"image3.jpg")!
    
    
    @IBAction func tapGo() {
        if x < 3 {
            x = x + 1
        } else {
            x = 1
        }
        imageViewSmall.image = UIImage(named: "image\(x).jpg")
    }
    
    @IBAction func tapBack() {
        if x > 1 {
            x = x - 1
        } else {
            x = 3
        }
        imageViewSmall.image = UIImage(named: "image\(x).jpg")
    }
    
    
    func time(){
        tapGo()
    }
    
    @IBAction func tapPlay() {
        
        // タイマーが動いていない時にタイマー開始
        if timer == nil {
            timer = NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: #selector(ViewController.time) , userInfo: nil, repeats: true);
        } else {
            timer?.invalidate();
        timer = nil
            
        }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let secondViewController:SecondViewController = segue.destinationViewController as! SecondViewController
        secondViewController.image = imageViewSmall.image
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        // 他の画面から segue を使って戻ってきた時に呼ばれる
    }
    


}

