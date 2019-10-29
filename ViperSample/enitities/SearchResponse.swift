//
//  SearchResponse.swift
//  ViperSample
//
//  Created by 渡辺 健一 on 2019/10/29.
//  Copyright © 2019 渡辺 健一. All rights reserved.
//

import Foundation

struct SearchResponse<Item: Decodable>: Decodable {

    let totalCount: Int
    let items: [Item]

    enum CodingKeys: String, CodingKey {
        case totalCount = "total_count"
        case items
    }
}
