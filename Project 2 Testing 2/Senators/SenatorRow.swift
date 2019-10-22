//
//  SenatorRow.swift
//  Project 2 Testing 2
//
//  Created by Nick Mahe on 10/21/19.
//  Copyright © 2019 Nick Mahe. All rights reserved.
//

import SwiftUI

struct SenatorRow: View {
    var senator: Senator
    
    var body: some View {
        HStack{
            senator.image
            .resizable()
            .frame(width: 50, height: 50)
            
            Text(senator.full_name)
            
            
        }
    
    
    }
}

struct SenatorRow_Previews: PreviewProvider {
    static var previews: some View {
        SenatorRow(senator: senatorData[0])
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
