//
//  CorrectViewController.swift
//  Day1_review
//
//  Created by Tatsuya Yamamoto on 2019/12/27.
//  Copyright © 2019 山本竜也. All rights reserved.
//

import UIKit

class CorrectViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = UIImage(named: "backgound3")
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
