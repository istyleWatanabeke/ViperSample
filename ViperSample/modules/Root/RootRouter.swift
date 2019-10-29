//
//  RootRouter.swift
//  ViperSample
//
//  Created by 渡辺 健一 on 2019/10/29.
//  Copyright © 2019 渡辺 健一. All rights reserved.
//

import UIKit

class RootRouter {

    private let window: UIWindow

    init(window: UIWindow) {
        self.window = window
    }

    func showFirstView() {
        let firstView = RepositoryListRouter.assembleModules()
        let navigationController = UINavigationController(rootViewController: firstView)

        window.rootViewController = navigationController
        window.makeKeyAndVisible()
    }
}
