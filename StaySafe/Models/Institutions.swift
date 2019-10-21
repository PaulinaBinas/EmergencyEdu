//
//  Institutions.swift
//  StaySafe
//
//  Created by Patryk Bresso on 02/10/2019.
//  Copyright © 2019 stud. All rights reserved.
//

import Foundation

struct InstitutionsLang: Decodable {
    var title: String
    var subtitle: String
    var contents: [InstitutionsContent]
}

struct InstitutionsContent: Decodable {
    var title: String
    var contents: [InstitutionsContentDetails]?
}

struct InstitutionsContentDetails: Decodable {
    var title: String
    var address: String
    var contact: String
    var latitude: Double
    var longitude: Double
}
