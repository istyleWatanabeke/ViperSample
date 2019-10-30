//
//  RepositoryDetailViewController.swift
//  ViperSample
//
//  Created by 渡辺 健一 on 2019/10/29.
//  Copyright © 2019 渡辺 健一. All rights reserved.
//

import UIKit
import WebKit

protocol RepositoryDetailView: class {

    func load(request urlRequest: URLRequest)
}

final class RepositoryDetailViewController: UIViewController {

    var presenter: RepositoryDetailViewPresentation!

    @IBOutlet private weak var webView: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()

        presenter.viewDidLoad()
    }
}

extension RepositoryDetailViewController: RepositoryDetailView {

    func load(request urlRequest: URLRequest) {
        webView.load(urlRequest)
    }
}
