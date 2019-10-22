//
//  SenatorDetailView.swift
//  Project 2 Testing 2
//
//  Created by Nick Mahe on 10/21/19.
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
                    //Text(president.name)
                        //.font(.largeTitle)
                    senator.image
                        .resizable()
                        .padding()
                        .frame(width:300, height:350)
                        .shadow(radius: 10)
                    
                    
                    HStack{
                    Text("Lived: \(String(senator.birth_year))-\(senator.getDate(death: true, office: false))")
                        .padding()
                        
                    Spacer()
                    Text("Served: \(senator.getDate(death: false, office: true))-\(senator.getDate(death: false, office: false))")
                        .padding()
                    }
                    .padding()
                    
                    Text(senator.party.uppercased())
                        .font(.headline)
                        .foregroundColor(senator.partyColor())
                    
                    Text(senator.bio)
                    .padding()
                    
                }
            }
            .navigationBarTitle(Text(senator.full_name))
            .navigationBarItems(trailing: Button(action: {self.showWikipediaModal = true}){
                Text("Wikipedia")
            })
        
        }
        .sheet(isPresented: self.$showWikipediaModal) {
            SenatorWikiView(senator: self.senator)
        }
        
    }
}

struct SenatorDetailView_Previews: PreviewProvider {
    static var previews: some View {
        SenatorDetailView(senator: senatorData[0])
    }
}
