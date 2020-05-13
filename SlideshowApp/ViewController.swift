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
    let images = [UIImage(named: "1.jpg"), UIImage(named: "2.jpg"), UIImage(named: "3.jpg")]
    @IBOutlet weak var Susumu: UIButton!
    @IBOutlet weak var Modoru: UIButton!
    @IBOutlet weak var Saisei: UIButton!
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
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
            Susumu.isEnabled = false;
            Modoru.isEnabled = false;
            Saisei.setTitle("停止", for: [])
            timer = Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(onTimer(_:)), userInfo: nil, repeats: true)
        } else {
            timer.invalidate()
            Susumu.isEnabled = true;
            Modoru.isEnabled = true;
            timer = nil
            Saisei.setTitle("再生", for: [])
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
    
    
    
    @IBAction func tap(_ sender: Any) {
        if timer == nil {
        } else {
            timer.invalidate()
        }
        
        }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // segueから遷移先のResultViewControllerを取得する
        let resultViewController:ResultViewController = segue.destination as! ResultViewController
        // 遷移先のResultViewControllerで宣言しているxに値を代入して渡す
        resultViewController.x = imageIndex
    }
    }



