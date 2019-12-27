//
//  ViewController.swift
//  Day1_review
//
//  Created by Tatsuya Yamamoto on 2019/12/27.
//  Copyright © 2019 山本竜也. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    // ここで答えを定義
    let answer = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func tapTrueButton(_ sender: Any) {
        
        // trueButton を押した後だから、 answer が true かどうか確認。
        // あってたら、CorrectViewController に行く
        if answer == true {
            let vc = CorrectViewController()
            present(vc, animated: true)
        } else {
            // 間違っていたら、 FailureViewController に行く
            let vc = FailureViewController()
            present(vc, animated: true)
        }
    }
    

    @IBAction func tapFalseButton(_ sender: Any) {
        if answer == false {
            let vc = CorrectViewController()
            present(vc, animated: true)
        } else {
            let vc = FailureViewController()
            present(vc, animated: true)
        }
    }
    
}

