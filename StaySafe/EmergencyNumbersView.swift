//
//  EmergencyNumbersView.swift
//  StaySafe
//
//  Created by stud on 19/08/2019.
//  Copyright © 2019 stud. All rights reserved.
//

import SwiftUI

struct EmergencyNumbersView: View {
    
    var body: some View {
        VStack {
            Text("Emergency numbers")
                .font(.title)
                .padding()
            List(emergencyNumbersPL, id:\.number) { entry in
                HStack{
                    Text(entry.number)
                        .fontWeight(.semibold)
                        .padding(.trailing)
                        .font(.body)
                    Text(entry.description)
                        .font(.body)
                    Spacer()
                    Button(action: {
                        if let url = URL(string: "tel://" + entry.number) {
                            UIApplication.shared.openURL(url)
                        }
                    }) {
                        Image("call")
                            .foregroundColor(Color.green)
                    }
                }
            }
        }
    }
}

#if DEBUG
struct EmergencyNumbersView_Previews: PreviewProvider {
    static var previews: some View {
        EmergencyNumbersView()
    }
}
#endif
