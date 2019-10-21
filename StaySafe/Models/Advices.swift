//
//  Advices.swift
//  StaySafe
//
//  Created by Patryk Bresso on 28/08/2019.
//  Copyright © 2019 stud. All rights reserved.
//

import Foundation


struct AdviceLang: Decodable {
    var title: String
    var subtitle: String
    var contents: [AdviceContent]
}

struct AdviceContent: Decodable {
    var title: String
    var text: String
}
