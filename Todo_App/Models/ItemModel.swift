//
//  ItemModel.swift
//  Demo_Proj_Todo
//
//  Created by Aryan Jain on 21/07/25.
//

import Foundation

struct ItemModel: Identifiable, Codable {
    let id: String
    var title: String
    var isCompleted: Bool = false
    
    init(title: String, isCompleted: Bool = false) {
        self.id = UUID().uuidString
        self.title = title
        self.isCompleted = isCompleted
    }
}
