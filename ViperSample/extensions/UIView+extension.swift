//
//  UIView+extension.swift
//  ViperSample
//
//  Created by 渡辺 健一 on 2019/10/30.
//  Copyright © 2019 渡辺 健一. All rights reserved.
//

import UIKit

extension UIView {

    static var className: String {
        return String(describing: self)
    }

    static func createNib(bundle: Bundle? = nil) -> UINib {
        return UINib(nibName: className, bundle: bundle)
    }
}
