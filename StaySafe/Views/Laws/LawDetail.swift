//
//  LawDetail.swift
//  StaySafe
//
//  Created by stud on 21/08/2019.
//  Copyright © 2019 stud. All rights reserved.
//

import SwiftUI

struct LawDetail: View {
    var entry: LawListEntry
    
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
            List(entry.act, id: \.title) { act in
                VStack{
                    Text(act.title)
                    Text(act.text)
                        .font(.subheadline)
                        .lineLimit(15)
                }
            }
        }.padding()
    }
}

#if DEBUG
struct LawDetail_Previews: PreviewProvider {
    static var previews: some View {
        LawDetail(entry: lawsListPL.contents[0])
    }
}
#endif
