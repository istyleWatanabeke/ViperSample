//
//  RepositoryListRouter.swift
//  ViperSample
//
//  Created by 渡辺 健一 on 2019/10/29.
//  Copyright © 2019 渡辺 健一. All rights reserved.
//

import UIKit

protocol RepositoryListWireframe: AnyObject {
    func showRepositoryDetail(_ repository: Repository)
}

final class RepositoryListRouter {

    // 画面遷移のためにViewControllerが必要。initで受け取る
    private unowned let viewController: UIViewController

    private init(viewController: UIViewController) {
        self.viewController = viewController
    }
}
