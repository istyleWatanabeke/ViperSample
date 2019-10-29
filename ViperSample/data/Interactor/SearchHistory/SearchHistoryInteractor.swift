//
//  SearchHistoryInteractor.swift
//  ViperSample
//
//  Created by 渡辺 健一 on 2019/10/29.
//  Copyright © 2019 渡辺 健一. All rights reserved.
//

import Foundation

protocol SearchHistoryUsecase: AnyObject {

    func loadLastSeachText(completion: (Swift.Result<String, SearchHistoryError>) -> Void)
}

final class SearchHistoryInteractor {

}

extension SearchHistoryInteractor: SearchHistoryUsecase {

    func loadLastSeachText(completion: (Swift.Result<String, SearchHistoryError>) -> Void) {
        let sortDescriptor = NSSortDescriptor(key: "lastSearchAt", ascending: false)
        guard let results = SearchHistory.select(orderBy: [sortDescriptor], limit: 1),
            !results.isEmpty,
            let searchText = results[0].searchText else {
                completion(.failure(.noHistory))
                return
        }

        completion(.success(searchText))
    }
}

enum SearchHistoryError: Error {

    case noHistory
}

