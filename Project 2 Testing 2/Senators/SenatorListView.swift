//
//  PresidentListView.swift
//  Project 2 Testing 2
//
//  Created by Nick Mahe on 10/15/19.
//  Copyright © 2019 Nick Mahe. All rights reserved.
//

import SwiftUI

struct SenatorListView: View {
    var body: some View {
        
        NavigationView {
            List(senatorData){ senator in
                NavigationLink(destination: SenatorDetailView(senator: senator)){
                    SenatorRow(senator: senator)
                }
            .navigationBarTitle("Senators")
                
            }
        }
    }
}

struct SenatorListView_Previews: PreviewProvider {
    static var previews: some View {
        SenatorListView()
    }
}
