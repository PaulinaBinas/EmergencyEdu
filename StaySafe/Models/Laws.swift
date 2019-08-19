//
//  Law.swift
//  StaySafe
//
//  Created by stud on 14/08/2019.
//  Copyright © 2019 stud. All rights reserved.
//

import Foundation

struct LangList : Decodable {
    var languages: [LangLawList]
}

struct LangLawList : Decodable {
    var language: String
    var contents: LawsList
}

struct LawsList : Decodable {
    var title: String
    var subtitle: String
    var contents: [LawListEntry]
}

struct LawListEntry: Decodable {
    var title: String
    var text: String
    var act: [ActContents]
}

struct ActContents: Decodable {
    var title: String
    var text: String
}
