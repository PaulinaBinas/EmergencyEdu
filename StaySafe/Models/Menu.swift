//
//  Menu.swift
//  StaySafe
//
//  Created by stud on 15/08/2019.
//  Copyright © 2019 stud. All rights reserved.
//

import Foundation

struct MenuLanguages: Decodable {
    var languages: [MenuList]
}

struct MenuList: Decodable {
    var language: String
    var menuElements: [MenuElement]
}

struct MenuElement: Decodable {
    var title: String
    var tag: Int
}
