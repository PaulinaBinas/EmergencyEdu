//
//  EmergencyNumbers.swift
//  StaySafe
//
//  Created by stud on 22/08/2019.
//  Copyright © 2019 stud. All rights reserved.
//

import Foundation

struct NumbersLangList : Decodable {
    var languages: [NumbersLang]
}

struct NumbersLang : Decodable {
    var language: String
    var title: String
    var contents: [EmergencyNumbers]
}

struct EmergencyNumbers : Decodable {
    var number: String
    var description: String
}
