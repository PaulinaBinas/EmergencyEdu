//
//  DataLoader.swift
//  StaySafe
//
//  Created by stud on 14/08/2019.
//  Copyright © 2019 stud. All rights reserved.
//

import UIKit
import SwiftUI
import CoreLocation

var lawsList: LangList = load("Laws.json")

var emergencyNumbers: NumbersLangList = load("EmergencyNumbers.json")

var lawsListPL: LawsList! = getLawListInLang(language: "PL")

var lawsListEN: LawsList! = getLawListInLang(language: "EN")

var emergencyNumbersPL: NumbersLang! = getEmergencyNumbersInLang(language: "PL")

var emergencyNumbersEN: NumbersLang! = getEmergencyNumbersInLang(language: "EN")

var adviceList: AdviceLang = load("Advice.json")

var situationsList: SituationsLang = load("DifficultSituations.json")
var institutionList: InstitutionsLang = load("Institutions.json")
var menuList: MenuLanguages = load("Menu.json")

var menuListPL: MenuList! = getMenuInLang(language: "PL")

var menuListEN: MenuList! = getMenuInLang(language: "EN")

func load<T: Decodable>(_ filename: String, as type: T.Type = T.self) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else {
            fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

func getLawListInLang(language: String) -> LawsList? {
    for lang in lawsList.languages {
            if(lang.language == language){
                return lang.contents
            }
        }
    return nil
}

func getEmergencyNumbersInLang(language: String) -> NumbersLang? {
    for lang in emergencyNumbers.languages {
            if(lang.language == language){
                return lang
            }
        }
    return nil
}

func getMenuInLang(language: String) -> MenuList? {
    for lang in menuList.languages {
        if(lang.language == language){
            return lang
        }
    }
    return nil
}
