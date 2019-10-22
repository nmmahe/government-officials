//
//  GovernorListView.swift
//  Project 2 Testing 2
//
//  Created by Nick Mahe on 10/21/19.
//  Copyright © 2019 Nick Mahe. All rights reserved.
//

import SwiftUI

struct GovernorListView: View {
    var body: some View {
        
        NavigationView {
            List(governorData){ governor in
                NavigationLink(destination: GovernorDetailView(governor: governor)){
                    GovernorRow(governor: governor)
                }
            .navigationBarTitle("Governors")
                
            }
        }
    }
}

struct GovernorListView_Previews: PreviewProvider {
    static var previews: some View {
        GovernorListView()
    }
}
