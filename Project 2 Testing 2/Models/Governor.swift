//
//  Governor.swift
//  Project 2 Testing 2
//
//  Created by Nick Mahe on 10/21/19.
//  Copyright © 2019 Nick Mahe. All rights reserved.
//


import SwiftUI

struct Governor: Hashable, Codable, Identifiable{

    //var url: String.url make this extension
    var id: Int
    fileprivate var imageName: String
    var name: String
    var state: String
    var stateCode: String
    var lastName: String
    var tookOffice: String
    var termEnd: String?
    var party: String
    var dateOfBirth: String
    var portraitImageName: String
    var biography: String
    var phoneNumber: String
    var address: String
    var religion: String
    var contactPage: String
    var wikiURL: String?
    
    private func generateImageName() -> String{
        return self.imageName
    }
    func partyColor() -> Color?{
        if self.party.lowercased() == "democrat" || self.party.lowercased() == "democratic"{
            return Color.blue
        }
        else if self.party.lowercased() == "republican" {
            return Color.red
        }
        return Color.black
    }
    /*func getDate(death death: Bool, office enterOffice: Bool) -> String{
        if death == true{
            if let date = self.death_year{
                return String(date)
            }
            return "Present"
            }
        else {
            if enterOffice == true{
                let sub = self.took_office.prefix(4)
                let response = String(sub)
                return response
            }
            else{
                if let date = self.left_office{
                    let sub = date.prefix(4)
                    let response = String(sub)
                    return response
                }
                return "Present"
            }
        }
    }*/
    
}


extension Governor {
    var image: Image {
        ImageStore.shared.image(name: generateImageName())
    }
}



