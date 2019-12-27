//
//  ViewController.swift
//  UserDefaultsPractice
//
//  Created by Tatsuya Yamamoto on 2019/12/25.
//  Copyright © 2019 山本竜也. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //TODO: ここにボタンとラベル、テキストフィールドを紐付けましょう！
    @IBOutlet weak var saveButton: UIButton!
    @IBOutlet weak var showButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var showLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // ボタンを角丸にする
        saveButton.layer.cornerRadius = 5
        showButton.layer.cornerRadius = 5
    }
    
    
    //TODO: ここに二つのボタンを紐付けましょう！
    @IBAction func tapSaveButton(_ sender: Any) {
        
        // textField に記述したものを input に入れる。
        let input = textField.text
        
        // UserDefaults を使って保存する。 key とは、その名前で保存しておくこと。
        // key: value の関係になっている。
        // input が value、 key が "user_input"
        UserDefaults.standard.set(input, forKey: "user_input")
    }
    
    @IBAction func tapShowButton(_ sender: Any) {
        
        // UserDefaults を使って、 "user_input" という key のものを取り出す。
        // inputText には "user_input" の value が入る
        let inputText = UserDefaults.standard.string(forKey: "user_input")
        
        // ラベルに inputText を表示
        showLabel.text = inputText
    }
    
    
    
}

