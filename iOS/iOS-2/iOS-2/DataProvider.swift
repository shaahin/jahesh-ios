//
//  DataProvider.swift
//  iOS-2
//
//  Created by Shahin on 12/16/16.
//  Copyright © 2016 Shahin. All rights reserved.
//

import Foundation

class JaheshDataProvider {
    
    static var sharedInstance: JaheshDataProvider = JaheshDataProvider()
    var users: [User]

    init() {
        let user1 = User(name: "Ali", age: 12, mark: 20.0)
        let user2 = User(name: "Hasan", age: 31, mark: 19.5)
        let user3 = User(name: "Leyla", age: 20, mark: 19.0)
        let user4 = User(name: "Parisa", age: 15, mark: 20.0)
        users = [user1, user2, user3, user4,
                 User(name: "Yalda", age: 23, mark: 19.0)
        ]
    }
    func addUser(_ user: User) {
        
    }
    
    
}
