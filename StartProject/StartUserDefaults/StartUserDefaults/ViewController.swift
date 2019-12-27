//
//  ViewController.swift
//  StartUserDefaults
//
//  Created by Tatsuya Yamamoto on 2019/12/27.
//  Copyright © 2019 山本竜也. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // GOAL: 保存ボタンを押した時に、UserDefaults に保存して、表示を押した時に保存した文字を使って、ラベルの文字を変更する
    // 1. ボタンを配置する
    // 2. ボタンを StackView の中に入れる
    // 3. ボタンを 真ん中に行くように AutoLayout をつける
    // 4. ボタンとコードを繋ぐ(部品＋アクション)
    // 5. アクションを記述する
    
    
    @IBOutlet weak var showLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

}

