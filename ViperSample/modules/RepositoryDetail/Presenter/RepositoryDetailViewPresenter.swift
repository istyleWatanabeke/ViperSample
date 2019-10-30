//
//  RepositoryDetailViewPresenter.swift
//  ViperSample
//
//  Created by 渡辺 健一 on 2019/10/30.
//  Copyright © 2019 渡辺 健一. All rights reserved.
//

import Foundation

protocol RepositoryDetailViewPresentation: class {

    func viewDidLoad()
}

final class RepositoryDetailViewPresenter {

    private weak var view: RepositoryDetailView?
    private let router: RepositoryDetailWireframe
    private let repository: Repository

    init(view: RepositoryDetailView, router: RepositoryDetailWireframe, repository: Repository) {
        self.view = view
        self.router = router
        self.repository = repository
    }
}

extension RepositoryDetailViewPresenter: RepositoryDetailViewPresentation {

    func viewDidLoad() {
        view?.load(request: URLRequest(url: repository.htmlURL))
    }
}
