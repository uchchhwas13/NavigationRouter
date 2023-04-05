//
//  Article.swift
//  NavigationRouter
//
//  Created by Uchchhwas Roy on 5/4/23.
//

import Foundation

struct Article: Identifiable, Hashable {
    let id = UUID()
    
    let title: String
    let author: String
}

extension Article {
    static let examples: [Article] = [
        .init(title: "making 5 apps in one hour", author: "FLo writes code"),
        .init(title: "combine mastery", author: "BigMountainStudio"),
        .init(title: "Dad jokes", author: "Stwert Lynch")
    ]
}
