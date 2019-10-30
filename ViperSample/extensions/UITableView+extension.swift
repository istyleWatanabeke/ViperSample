//
//  UITableView+extension.swift
//  ViperSample
//
//  Created by 渡辺 健一 on 2019/10/30.
//  Copyright © 2019 渡辺 健一. All rights reserved.
//

import UIKit

extension UITableView {

    func register<T: Registrable & UITableViewCell>(_ registrableType: T.Type) {
        switch registrableType {
        case let nibRegistrableType as NibRegistrable.Type:
            register(nibRegistrableType.nib, forCellReuseIdentifier: nibRegistrableType.reuseIdentifier)
        case let classRegistrableType as ClassRegistrable.Type:
            register(classRegistrableType, forCellReuseIdentifier: classRegistrableType.reuseIdentifier)
        default:
            assertionFailure("\(registrableType) is unknown type")
        }
    }

    func dequeueReusableCell<T: Registrable & UITableViewCell>(for indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Could not dequeue cell with type \(T.self)")
        }
        return cell
    }
}
