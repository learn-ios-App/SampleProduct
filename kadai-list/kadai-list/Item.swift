//
//  Item.swift
//  kadai-list
//
//  Created by 渡邊魁優 on 2023/11/25.
//

import Foundation

struct Item: Identifiable {
    let id = UUID()
    var name: String
    var isCheck: Bool
}
