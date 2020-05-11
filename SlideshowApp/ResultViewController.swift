//
//  ResultViewController.swift
//  SlideshowApp
//
//  Created by 米島尚 on 2020/05/09.
//  Copyright © 2020 hisa.yone. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    @IBOutlet weak var imageview2: UIImageView!
    var imageIndex = 0
    let images = [UIImage(named: "1"), UIImage(named: "2"), UIImage(named: "3")]
    var x : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        imageview2.image = images[x]
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
