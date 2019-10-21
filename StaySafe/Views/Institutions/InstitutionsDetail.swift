//
//  InstitutionsDetail.swift
//  StaySafe
//
//  Created by Patryk Bresso on 07/10/2019.
//  Copyright © 2019 stud. All rights reserved.
//

import SwiftUI

struct InstitutionsDetail: View {
    var entry: InstitutionsContentDetails
    
    var body: some View {
        VStack {
            InstitutionMapView(latitude: entry.latitude, longitude: entry.longitude)
                .frame(height: 200)
        
        
        VStack {
            Text(entry.title)
                .font(.title)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .padding(.bottom)
            Text(entry.address)
                .font(.body)
                .lineLimit(100)
            
                HStack{
                    Button(action: {
                        if let url = URL(string: "tel://" + self.entry.contact) {
                            UIApplication.shared.openURL(url)
                        }
                    }) {
                        Image("call")
                            .foregroundColor(Color.green)
                    }
                    Text(entry.contact)
                        .fontWeight(.semibold)
                        .padding(.trailing)
                        .font(.body)
                    
                }
            
        }.padding()
    }
    }
}

#if DEBUG
struct InstitutionsDetail_Previews: PreviewProvider {
    static var previews: some View {
        InstitutionsDetail(entry: institutionList.contents[0].contents![0])
    }
}
#endif
