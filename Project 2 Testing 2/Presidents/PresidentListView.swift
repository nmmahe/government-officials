//
//  PresidentListView.swift
//  Project 2 Testing 2
//
//  Created by Nick Mahe on 10/15/19.
//  Copyright © 2019 Nick Mahe. All rights reserved.
//

import SwiftUI

struct PresidentListView: View {
    var body: some View {
        
        NavigationView {
            List(presidentData){ president in
                NavigationLink(destination: PresidentDetailView(president: president)){
                    PresidentRow(president: president)
                }
            .navigationBarTitle("Presidents")
                
            }
        }
    }
}

struct PresidentListView_Previews: PreviewProvider {
    static var previews: some View {
        PresidentListView()
    }
}
