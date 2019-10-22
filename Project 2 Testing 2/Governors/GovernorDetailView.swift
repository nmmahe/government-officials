//
//  GovernorDetailView.swift
//  Project 2 Testing 2
//
//  Created by Nick Mahe on 10/21/19.
//  Copyright © 2019 Nick Mahe. All rights reserved.
//

import SwiftUI

struct GovernorDetailView: View {
    var governor: Governor
    
    @State var showWikipediaModal = false
    
    var body: some View {
        
        NavigationView {
            ScrollView{
                VStack {
                    
                    governor.image
                        .resizable()
                        .padding()
                        .frame(width:300, height:350)
                /*Text("Lived: \(String(senator.birth_year))-\(senator.getDate(death: true, office: false))")
                    Spacer()*/
                    /*Text("Served: \(governor.getDate(death: false, office: true))-\(senator.getDate(death: false, office: false))")*/
                    //Spacer()
                    Text(governor.party.uppercased())
                        .font(.headline)
                        .foregroundColor(governor.partyColor())
                    
                    Text(governor.biography)
                    .padding()
                    
                }
            }
            .navigationBarTitle(Text(governor.name))
            .navigationBarItems(trailing: Button(action: {self.showWikipediaModal = true}){
                Text("Wikipedia")
            })
        
        }
        .sheet(isPresented: self.$showWikipediaModal) {
            GovernorWikiView(governor: self.governor)
        }
        
    }
}

struct GovernorDetailView_Previews: PreviewProvider {
    static var previews: some View {
        GovernorDetailView(governor: governorData[0])
    }
}
