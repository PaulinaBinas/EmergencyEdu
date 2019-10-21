//
//  InstitutionsNavigationRow.swift
//  StaySafe
//
//  Created by Patryk Bresso on 07/10/2019.
//  Copyright © 2019 stud. All rights reserved.
//

import SwiftUI

struct InstitutionsNavigationRow: View {
    var content: InstitutionsContentDetails
    
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
struct InstitutionsNavigationRow_Previews: PreviewProvider {
    static var previews: some View {
        InstitutionsNavigationRow(content: institutionList.contents[0].contents![0])
    }
}
#endif
