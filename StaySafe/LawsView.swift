//
//  LawsView.swift
//  StaySafe
//
//  Created by stud on 19/08/2019.
//  Copyright © 2019 stud. All rights reserved.
//

import SwiftUI

struct LawsView: View {
    
    var list: LawsList {
        if(language == "PL") {
            return lawsListPL
        } else {
            return lawsListEN
        }
    }
    
    var navBar: some View {
        VStack{
            Text(list.title)
                .font(.title)
                .multilineTextAlignment(.center)
                .padding(.leading)
                .padding(.top)
            Text(list.subtitle)
                .font(.subheadline)
                .multilineTextAlignment(.center)
                .padding(.leading)
        }
    }
    
    var body: some View {
        VStack {
            NavigationView {
                List(list.contents, id:\.title) { element in
                    NavigationLink(destination: LawDetail(entry: element)) {
                        LawsNavigationRow(content: element)
                    }
                }.navigationBarItems(leading: navBar)
            }
        }
    }
}

#if DEBUG
struct LawsView_Previews: PreviewProvider {
    static var previews: some View {
        LawsView()
    }
}
#endif
