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
            ScrollView{
                VStack {
                    president.image
                        .padding()
                        .shadow(radius: 10)

                    Text("Entered Office: \(president.entered_office)")
                    Spacer()
                    Text(president.party.uppercased())
                        .font(.headline)
                        .foregroundColor(president.partyColor())
                    
                    Text(president.biography)
                    .padding()
                    
                }
            } .navigationBarTitle(Text(president.name))
            .navigationBarItems(trailing: Button(action: {self.showWikipediaModal = true}){
                Text("Wikipedia")
            })
        
        }
        .sheet(isPresented: self.$showWikipediaModal) {
            RedSampleView(president: self.president)
        }
        
    }
}

struct PresidentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PresidentDetailView(president: presidentData[0])
    }
}
