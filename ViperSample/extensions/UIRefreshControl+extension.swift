//
//  UIRefreshControl+extension.swift
//  ViperSample
//
//  Created by 渡辺 健一 on 2019/10/30.
//  Copyright © 2019 渡辺 健一. All rights reserved.
//

import UIKit

extension UIRefreshControl {

    func beginRefreshingManually(in scrollView: UIScrollView) {
        beginRefreshing()
        let offset = CGPoint.init(x: 0, y: -frame.size.height)
        scrollView.setContentOffset(offset, animated: true)
    }
}
