//
//  UITableViewCell+extension.swift
//  ViperSample
//
//  Created by 渡辺 健一 on 2019/10/30.
//  Copyright © 2019 渡辺 健一. All rights reserved.
//

import UIKit

protocol Registrable where Self: UIView {
    static var reuseIdentifier: String { get }
}

extension Registrable {
    static var reuseIdentifier: String {
        return self.className
    }
}

protocol ClassRegistrable: Registrable { }

protocol NibRegistrable: Registrable {
    static var nib: UINib { get }
}

extension NibRegistrable {
    static var nib: UINib {
        let nibName = String(describing: self)
        return UINib(nibName: nibName, bundle: Bundle(for: self))
    }
}
