//
//  InstitutionsView.swift
//  StaySafe
//
//  Created by stud on 19/08/2019.
//  Copyright © 2019 stud. All rights reserved.
//

import SwiftUI

struct InstitutionsView: View {
    
    @State private var selectorIndex = 0
    
    var list: InstitutionsLang {
        return institutionList
    }
    
    
    var navBar: some View {
        VStack {
            // 2
            Picker("Institutions", selection: $selectorIndex) {
                ForEach(0 ..< institutionList.contents.count) { index in
                    Text(institutionList.contents[index].title)
                }
            }
            .pickerStyle(SegmentedPickerStyle())
        }
    }
    
    var body: some View {
        
        VStack {
            NavigationView {
                List(list.contents[selectorIndex].contents!, id:\.title) { element in
                    NavigationLink(destination: InstitutionsDetail(entry: element)) {
                        InstitutionsNavigationRow(content: element)
                    }
                }.navigationBarItems(leading: navBar)
            }
        }
    }
}

#if DEBUG
struct InstitutionsView_Previews: PreviewProvider {
    static var previews: some View {
        InstitutionsView()
    }
}
#endif
