//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 米島尚 on 2020/02/26.
//  Copyright © 2020 hisa.yone. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    
    var imageIndex = 0
    var timer: Timer!
    let images = [UIImage(named: "1"), UIImage(named: "2"), UIImage(named: "3")]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imageView.image = images[0]
    }

    @IBAction func next(_ sender: Any) {
        if imageIndex == 2 {
            imageIndex = 0
        } else {
            imageIndex += 1
        }
        imageView.image = images[imageIndex]
    }
    
    @IBAction func prev(_ sender: Any) {
        if imageIndex == 0 {
            imageIndex = 2
        } else {
            imageIndex -= 1
        }
        imageView.image = images[imageIndex]
        
    }
    @IBAction func startPause(_ sender: Any) {
        if timer == nil {
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(onTimer(_:)), userInfo: nil, repeats: true)
        } else {
            timer.invalidate()
            timer = nil
        }
    }
    @objc func onTimer(_ timer: Timer) {
            if imageIndex == 2 {
            imageIndex = 0
            } else {
                // 表示している画像の番号を1増やす
            imageIndex += 1
            }
            imageView.image = images[imageIndex]
    }

}
