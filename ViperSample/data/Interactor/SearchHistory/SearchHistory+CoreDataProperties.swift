//
//  SearchHistory+CoreDataProperties.swift
//  ViperSample
//
//  Created by 渡辺 健一 on 2019/10/29.
//  Copyright © 2019 渡辺 健一. All rights reserved.
//

import Foundation
import CoreData

extension SearchHistory {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<SearchHistory> {
        return NSFetchRequest<SearchHistory>(entityName: "SearchHistory")
    }

    @NSManaged public var firstSearchAt: Date?
    @NSManaged public var lastSearchAt: Date?
    @NSManaged public var searchText: String?

}
