//
//  ContentView.swift
//  Project 2 Testing 2
//
//  Created by Nick Mahe on 10/15/19.
//  Copyright © 2019 Nick Mahe. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            PresidentListView()
                .tabItem{
                    Image(systemName: "1.square.fill")
                    Text("U.S. Presidents")
            }
            SenatorListView()
                .tabItem{
                    Image(systemName: "2.square.fill")
                    Text("Current U.S. Senators")
            }
            GovernorListView()
                .tabItem{
                    Image(systemName: "3.square.fill")
                    Text("Current U.S. Governors")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
