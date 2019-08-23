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
    var body: some View {
        MainView()
    }
}

#if DEBUG
struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
