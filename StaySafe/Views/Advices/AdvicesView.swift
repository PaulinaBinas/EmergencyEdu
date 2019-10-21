//
//  AdvicesView.swift
//  StaySafe
//
//  Created by stud on 19/08/2019.
//  Copyright © 2019 stud. All rights reserved.
//

import SwiftUI

struct AdvicesView: View {
    
   var list: AdviceLang {
        return adviceList
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
                    NavigationLink(destination: AdvicesDetail(entry: element)) {
                        AdvicesNavigationRow(content: element)
                    }
                }.navigationBarItems(leading: navBar)
            }
        }

    }
}

#if DEBUG
struct AdvicesView_Previews: PreviewProvider {
    static var previews: some View {
        AdvicesView()
    }
}
#endif
