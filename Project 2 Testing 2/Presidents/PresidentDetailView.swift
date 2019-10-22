//
//  SenatorDetailView.swift
//  Project 2 Testing 2
//
//  Created by Nick Mahe on 10/21/19.
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
                        .resizable()
                        .padding()
                        .frame(width:300, height:350)
                        .shadow(radius: 10)
         
                    HStack{
                    Text("Lived: \(String(president.birth_year))-\(president.getDate(death: true, office: false))")
                        .padding()
                    Spacer()
                    Text("Served: \(president.getDate(death: false, office: true))-\(president.getDate(death: false, office: false))")
                        .padding()
                    }
                    .padding()
                   Text(president.party.uppercased())
                        .font(.headline)
                        .foregroundColor(president.partyColor())
                    
                    Text(president.bio)
                    .padding()
                    
                }
            }
            .navigationBarTitle(Text(president.full_name))
            .navigationBarItems(trailing: Button(action: {self.showWikipediaModal = true}){
                Text("Wikipedia")
            })
        
        }
        .sheet(isPresented: self.$showWikipediaModal) {
            PresidentWikiView(president: self.president)
        }
        
    }
}

struct PresidentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PresidentDetailView(president: presidentData[0])
    }
}
