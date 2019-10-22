//
//  PresidentDetailView.swift
//  Project 2 Testing 2
//
//  Created by Nick Mahe on 10/15/19.
//  Copyright © 2019 Nick Mahe. All rights reserved.
//

import SwiftUI

struct SenatorDetailView: View {
    var senator: Senator
    @State var showWikipediaModal = false
    
    var body: some View {
        NavigationView {
            ScrollView{
                VStack {
                    senator.image
                        .padding()
                        .shadow(radius: 10)

                    Text("Entered Office: \(senator.entered_office)")
                    Spacer()
                    Text(senator.party.uppercased())
                        .font(.headline)
                        .foregroundColor(senator.partyColor())
                    
                    Text(senator.biography)
                    .padding()
                    
                }
            } .navigationBarTitle(Text(senator.name))
            .navigationBarItems(trailing: Button(action: {self.showWikipediaModal = true}){
                Text("Wikipedia")
            })
        
        }
        .sheet(isPresented: self.$showWikipediaModal) {
            RedSampleView(senator: self.senator)
        }
        
    }
}

struct SenatorDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SenatorDetailView(senator: senatorData[0])
    }
}
