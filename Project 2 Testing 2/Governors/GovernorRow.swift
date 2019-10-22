//
//  GovernorRow.swift
//  Project 2 Testing 2
//
//  Created by Nick Mahe on 10/21/19.
//  Copyright © 2019 Nick Mahe. All rights reserved.
//

import SwiftUI

struct GovernorRow: View {
    var governor: Governor
    
    var body: some View {
        HStack{
            governor.image
            .resizable()
            .frame(width: 50, height: 50)
            Text(governor.name)
        }
    }
}

struct GovernorRow_Previews: PreviewProvider {
    static var previews: some View {
        GovernorRow(governor: governorData[0])
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
