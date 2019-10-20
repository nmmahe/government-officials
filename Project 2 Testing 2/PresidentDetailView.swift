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
    @State var showWikipediaModal = false
    
    var body: some View {
        NavigationView {
            VStack {
                //Text(president.name)
                    //.font(.largeTitle)
                president.image
                Text(president.party.uppercased())
                    .font(.headline)
                    .foregroundColor(president.partyColor())
                
                Text(president.biography)
                .padding()
                
            }
            .navigationBarTitle(Text(president.name))
            .navigationBarItems(trailing: Button(action: {self.showWikipediaModal = true}){
                Text("Wikipedia")
            })
        
        }
        .sheet(isPresented: self.$showWikipediaModal) {
            RedSampleView()
        }
        
    }
}

struct PresidentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PresidentDetailView(president: presidentData[0])
    }
}
