//
//  RepositoryDetailRouter.swift
//  ViperSample
//
//  Created by 渡辺 健一 on 2019/10/29.
//  Copyright © 2019 渡辺 健一. All rights reserved.
//

import UIKit

protocol RepositoryDetailWireframe: class {

}

final class RepositoryDetailRouter {

    private unowned let viewController: UIViewController

    private init(viewController: UIViewController) {
        self.viewController = viewController
    }

//    static func assembleModules(repository: Repository) -> UIViewController {
//        let view = RepositoryDetailViewController()
//        let router = RepositoryDetailRouter(viewController: view)
//        let presenter = RepositoryDetailViewPresenter(view: view, router: router, repository: repository)
//
//        view.presenter = presenter
//
//        return view
//    }
}

extension RepositoryDetailRouter: RepositoryDetailWireframe {

}
