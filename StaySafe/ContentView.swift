//
//  ContentView.swift
//  StaySafe
//
//  Created by stud on 14/08/2019.
//  Copyright © 2019 stud. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var selection = 0
    
    var i = -1
 
    var body: some View {
        TabbedView(selection: $selection){
            Text(menuList.menuElements[0].title)
                .font(.title)
                .tabItem {
                    VStack {
                        Image("first")
                        Text(menuList.menuElements[0].title)
                    }
                }
                .tag(0)
            Text(menuList.menuElements[1].title)
                .font(.title)
                .tabItem {
                    VStack {
                        Image("second")
                        Text(menuList.menuElements[1].title)
                    }
                }
                .tag(1)
            Text(menuList.menuElements[2].title)
                .font(.title)
                .tabItem {
                    VStack {
                        Image("first")
                        Text(menuList.menuElements[2].title)
                    }
                }
                .tag(2)
            Text(menuList.menuElements[3].title)
                .font(.title)
                .tabItem {
                    VStack {
                        Image("second")
                        Text(menuList.menuElements[3].title)
                    }
                }
                .tag(3)
            Text(menuList.menuElements[4].title)
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

#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
