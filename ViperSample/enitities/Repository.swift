//
//  Repository.swift
//  ViperSample
//
//  Created by 渡辺 健一 on 2019/10/29.
//  Copyright © 2019 渡辺 健一. All rights reserved.
//

import Foundation

struct Repository: Decodable {

    let id: Int
    let name: String
    let fullName: String
    let htmlURL: URL
    let starCount: Int
    let owner: User

    enum CodingKeys: String, CodingKey {
        case id
        case name
        case fullName = "full_name"
        case htmlURL = "html_url"
        case starCount = "stargazers_count"
        case owner
    }
}
