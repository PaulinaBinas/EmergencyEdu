//
//  AdvicesDetail.swift
//  StaySafe
//
//  Created by Patryk Bresso on 29/08/2019.
//  Copyright © 2019 stud. All rights reserved.
//

import SwiftUI


struct SituationsDetail: View {
    var entry: SituationsContent
    
    var body: some View {
        VStack {
            Text(entry.title)
                .font(.title)
                .multilineTextAlignment(.center)
                .lineLimit(2)
                .padding(.bottom)
            Text(entry.text)
                .font(.body)
                .lineLimit(100)
        }.padding()
    }
}

#if DEBUG
struct SituationsDetail_Previews: PreviewProvider {
    static var previews: some View {
        SituationsDetail(entry: situationsList.contents[0])
    }
}
#endif
