//
//  SenatorRow.swift
//  Project 2 Testing 2
//
//  Created by Nick Mahe on 10/21/19.
//  Copyright © 2019 Nick Mahe. All rights reserved.
//

import SwiftUI

struct PresidentRow: View {
    var president: President
    
    var body: some View {
        HStack{
            president.image
            .resizable()
            .frame(width: 50, height: 50)
            Text(president.full_name)
        }  
    }
}

struct PresidentRow_Previews: PreviewProvider {
    static var previews: some View {
        PresidentRow(president: presidentData[0])
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
