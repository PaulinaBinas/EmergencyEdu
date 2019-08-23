//
//  ContentView.swift
//  StaySafe
//
//  Created by stud on 14/08/2019.
//  Copyright © 2019 stud. All rights reserved.
//

import SwiftUI

var language = "PL"

struct ContentView: View {
    
    @State private var selection = 0
        
    @State private var languageImage: String = "EN"
    
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
            TabbedView(selection: $selection){
                AdvicesView()
                    .tabItem {
                        VStack {
                            Image("first")
                            Text(menuList.menuElements[0].title)
                        }
                    }
                    .tag(0)
                    LawsView()
                        .font(.title)
                        .tabItem {
                            VStack {
                                Image("second")
                                Text(menuList.menuElements[1].title)
                            }
                        }
                        .tag(1)
                        DifficultSituationsView()
                            .font(.title)
                            .tabItem {
                                VStack {
                                    Image("first")
                                    Text(menuList.menuElements[2].title)
                                }
                            }
                            .tag(2)
                            EmergencyNumbersView()
                                .font(.title)
                                .tabItem {
                                    VStack {
                                        Image("second")
                                        Text(menuList.menuElements[3].title)
                                    }
                                }
                                .tag(3)
                                InstitutionsView()
                                    .font(.title)
                                    .tabItem {
                                        VStack {
                                            Image("first")
                                            Text(menuList.menuElements[4].title)
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
        ContentView()
    }
}
#endif
