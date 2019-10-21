//
//  LawsNavigationRow.swift
//  StaySafe
//
//  Created by stud on 21/08/2019.
//  Copyright © 2019 stud. All rights reserved.
//

import SwiftUI

struct SituationsNavigationRow: View {
    var content: SituationsContent
    
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
struct SituationsNavigationRow_Previews: PreviewProvider {
    static var previews: some View {
        SituationsNavigationRow(content: situationsList.contents[0])
    }
}
#endif
