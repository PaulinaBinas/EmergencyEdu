//
//  AdvicesDetail.swift
//  StaySafe
//
//  Created by Patryk Bresso on 29/08/2019.
//  Copyright © 2019 stud. All rights reserved.
//

import SwiftUI


struct AdvicesDetail: View {
    var entry: AdviceContent
    
    var body: some View {
        VStack {
            Text(entry.title)
                .font(.title)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .padding(.bottom)
            Text(entry.text)
                .font(.body)
                .lineLimit(100)
        }.padding()
    }
}

#if DEBUG
struct AdvicesDetail_Previews: PreviewProvider {
    static var previews: some View {
        AdvicesDetail(entry: adviceList.contents[0])
    }
}
#endif
