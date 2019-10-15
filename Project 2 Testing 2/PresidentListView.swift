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
            List{
                NavigationLink(destination: PresidentDetailView()){
                    Text("President Name")
                }
            }
        }
    }
}

struct PresidentListView_Previews: PreviewProvider {
    static var previews: some View {
        PresidentListView()
    }
}
