//
//  LawsNavigationRow.swift
//  StaySafe
//
//  Created by stud on 21/08/2019.
//  Copyright © 2019 stud. All rights reserved.
//

import SwiftUI

struct LawsNavigationRow: View {
    var content: LawListEntry
    
    var body: some View {
        HStack {
            Text(content.title)
                .fontWeight(.regular)
                .lineLimit(5)
                .font(.headline)
        }
    }
}

#if DEBUG
struct LawsNavigationRow_Previews: PreviewProvider {
    static var previews: some View {
        LawsNavigationRow(content: lawsListPL.contents[0])
    }
}
#endif
