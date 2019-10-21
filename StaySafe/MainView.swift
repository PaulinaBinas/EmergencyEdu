//
//  MainViewView.swift
//  StaySafe
//
//  Created by stud on 23/08/2019.
//  Copyright © 2019 stud. All rights reserved.

import SwiftUI

struct MainView: View {
    
    @State private var selection = 0
        
    @State private var languageImage: String = "EN"
    
    var list: MenuList {
        if(language == "PL") {
            return menuListPL
        } else {
            return menuListEN
        }
    }
    
    var i = -1
 
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button(action: {
                    let temp = language
                    language = self.languageImage
                    self.languageImage = temp
                }){
                    Image(languageImage)
                        .padding(.trailing)
                }.padding(.top)
            }
            TabView(selection: $selection){
                AdvicesView()
                .tabItem {
                    VStack {
                        Image("first")
                        Text(list.menuElements[0].title)
                    }
                }
                .tag(0)
                LawsView()
                .font(.title)
                .tabItem {
                    VStack {
                        Image("second")
                        Text(list.menuElements[1].title)
                    }
                }
                .tag(1)
                DifficultSituationsView()
                .font(.title)
                .tabItem {
                    VStack {
                        Image("first")
                        Text(list.menuElements[2].title)
                    }
                }
                .tag(2)
                EmergencyNumbersView()
                .font(.title)
                .tabItem {
                    VStack {
                        Image("call")
                        Text(list.menuElements[3].title)
                    }
                }
                .tag(3)
                InstitutionsView()
                .font(.title)
                .tabItem {
                    VStack {
                        Image("first")
                        Text(list.menuElements[4].title)
                    }
                }
                .tag(4)
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
#endif

