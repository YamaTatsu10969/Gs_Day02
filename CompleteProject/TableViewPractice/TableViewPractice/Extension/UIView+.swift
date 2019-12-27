//
//  UIView+.swift
//  TableViewPractice
//
//  Created by Tatsuya Yamamoto on 2019/12/27.
//  Copyright © 2019 山本竜也. All rights reserved.
//

import UIKit

// UIView を拡張している。機能を追加している。
// 名前を使えるようにする。
extension UIView {
    class var className: String {
        return String(describing: self)
    }
}
