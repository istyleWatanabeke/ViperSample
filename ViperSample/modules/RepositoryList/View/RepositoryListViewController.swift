//
//  RepositoryListViewController.swift
//  ViperSample
//
//  Created by 渡辺 健一 on 2019/10/29.
//  Copyright © 2019 渡辺 健一. All rights reserved.
//

import UIKit

protocol RepositoryListViewPresentation: AnyObject {

    func viewDidLoad()
    func searchButtonDidPush(searchText: String)
    func refreshControlValueChanged(searchText: String)
    func didSelectRow(at indexPath: IndexPath)
}

final class RepositoryListViewController: UIViewController {

    // Presenterへのアクセスはprotocolを介して行う
    var presenter: RepositoryListViewPresentation!

    @IBOutlet private weak var tableView: UITableView! {
       didSet {
//           tableView.register(RepositoryCell.self)
           tableView.refreshControl = refreshControl
       }
    }

    @IBOutlet private weak var errorMessageLabel: UILabel!
    private lazy var searchBar: UISearchBar = {
        let searchBar = UISearchBar()
        searchBar.placeholder = "リポジトリ名を入力..."

//        searchBar.delegate = self

        return searchBar
    }()

    private lazy var refreshControl: UIRefreshControl = {
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: #selector(refreshControlValueChanged(sender:)), for: .valueChanged)
        return refreshControl
    }()

    private var repositories: [Repository] = [] {
        didSet {
            DispatchQueue.main.async {
                self.errorMessageLabel.isHidden = true
                self.tableView.reloadData() // 画面の更新

                if self.refreshControl.isRefreshing {
                    self.refreshControl.endRefreshing()
                }
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        navigationItem.titleView = searchBar

        presenter.viewDidLoad()
    }

    override func viewDidAppear(_ animated: Bool) {
        if let indexPath = tableView.indexPathForSelectedRow {
            tableView.deselectRow(at: indexPath, animated: true)
        }
    }

    @objc private func refreshControlValueChanged(sender: UIRefreshControl) {
        guard let text = searchBar.text else { return }

        presenter.refreshControlValueChanged(searchText: text)
    }
}

