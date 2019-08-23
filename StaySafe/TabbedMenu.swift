//
//  TabbedMenu.swift
//  StaySafe
//
//  Created by stud on 23/08/2019.
//  Copyright © 2019 stud. All rights reserved.
//

import SwiftUI

struct TabbedMenu: View {
    @State private var selection = 0
    
    var list: MenuList {
        if(language == "PL") {
            return menuListPL
        } else {
            return menuListEN
        }
    }
    
    var body: some View {
        TabbedView(selection: $selection){
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
                                    Image("second")
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

#if DEBUG
struct TabbedMenu_Previews: PreviewProvider {
    static var previews: some View {
        TabbedMenu()
    }
}
#endif
