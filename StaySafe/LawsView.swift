//
//  LawsView.swift
//  StaySafe
//
//  Created by stud on 19/08/2019.
//  Copyright © 2019 stud. All rights reserved.
//

import SwiftUI

struct LawsView: View {
    var body: some View {
        VStack {
            Text(lawsListPL.title)
                .font(.title)
            Text(lawsListPL.subtitle)
                .font(.subheadline)
            List(lawsListPL.contents, id: \.title) { content in
                Text(content.title)
                    .fontWeight(.regular)
                    .lineLimit(2)
                    .font(.headline)
                    
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
