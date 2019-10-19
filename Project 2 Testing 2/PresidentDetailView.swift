//
//  PresidentDetailView.swift
//  Project 2 Testing 2
//
//  Created by Nick Mahe on 10/15/19.
//  Copyright © 2019 Nick Mahe. All rights reserved.
//

import SwiftUI

struct PresidentDetailView: View {
    var president: President
    
    var body: some View {
        Text(president.name)
    }
}

struct PresidentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PresidentDetailView(president: presidentData[0])
    }
}
