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

}
