//
//  RepositoryCell.swift
//  ViperSample
//
//  Created by 渡辺 健一 on 2019/10/29.
//  Copyright © 2019 渡辺 健一. All rights reserved.
//

import UIKit

class RepositoryCell: UITableViewCell {

    @IBOutlet private weak var repositoryNameLabel: UILabel!
    @IBOutlet private weak var starCoutLabel: UILabel!

    func setRepository(_ repository: Repository) {
        repositoryNameLabel.text = repository.fullName
        starCoutLabel.text = "\(repository.starCount)"
    }
}
