//
//  Menu.swift
//  StaySafe
//
//  Created by stud on 15/08/2019.
//  Copyright © 2019 stud. All rights reserved.
//

import Foundation

struct MenuList: Decodable {
    var menuElements: [MenuElement]
}

struct MenuElement: Decodable {
    var title: String
    var tag: Int
}
