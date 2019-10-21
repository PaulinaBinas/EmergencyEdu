//
//  DifficultSituations.swift
//  StaySafe
//
//  Created by Patryk Bresso on 03/09/2019.
//  Copyright © 2019 stud. All rights reserved.
//

import Foundation


struct SituationsLang: Decodable {
    var title: String
    var subtitle: String
    var contents: [SituationsContent]
}

struct SituationsContent: Decodable {
    var title: String
    var text: String
    var contents: [SituationsContentDetails]?
}

struct SituationsContentDetails: Decodable {
    var title: String?
}
