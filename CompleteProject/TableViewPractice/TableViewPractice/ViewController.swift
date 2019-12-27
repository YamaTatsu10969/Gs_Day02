//
//  ViewController.swift
//  TableViewPractice
//
//  Created by Tatsuya Yamamoto on 2019/12/27.
//  Copyright © 2019 山本竜也. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func tapNextButton(_ sender: Any) {
        let vc = PokemonTableViewController()
        vc.title = "ポケモン言えるかな？"
        let navi = UINavigationController(rootViewController: vc)
        present(navi, animated: true)
    }
    
    @IBAction func tapCustomButton(_ sender: Any) {
        let vc = CustomPokemonViewController()
        vc.title = "カスタムしてるよ！"
        let navi = UINavigationController(rootViewController: vc)
        present(navi, animated: true)
    }
}

