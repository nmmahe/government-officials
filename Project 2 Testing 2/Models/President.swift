//
//  President.swift
//  Project 2 Testing 2
//
//  Created by Nick Mahe on 10/15/19.
//  Copyright © 2019 Nick Mahe. All rights reserved.
//

import SwiftUI

struct President: Hashable, Codable, Identifiable{
    /*var id: Int
    var name: String
    var state: String
    fileprivate var imageName: String*/
    //var url: String.url make this extension
    var id: Int
    fileprivate var imageName: String
    var state: String
    var state_name_slug: String
    var state_code: String
    var state_code_slug: String
    var class_var: String
    var bioguide: String
    var thomas: String?
    var opensecrets: String
    var votesmart: String
    var fec: String?
    var maplight: String?
    var wikidata: String?
    var google_entity_id: String?
    var title: String
    var party: String
    var name: String
    var name_slug: String
    var first_name: String
    var middle_name: String?
    var last_name: String
    var name_suffix: String?
    var goes_by: String?
    var pronunciation: String
    var gender: String
    var ethnicity: String
    var religion: String
    var openly_lgbtq: String
    var date_of_birth: String
    var entered_office: String
    var term_end: String
    var biography: String
    var phone: String
    var fax: String?
    var latitude: String
    var longitude: String
    var address_complete: String
    var address_number: String?
    var address_prefix: String?
    var address_street: String
    var address_sec_unit_type: String?
    var address_sec_unit_num: String?
    var address_city: String
    var address_state: String
    var address_zipcode: String
    var address_type: String
    var website: String?
    var contact_page: String?
    var facebook_url: String?
    var twitter_handle: String?
    var twitter_url: String?
    var photo_url: String
    
    private func generateImageName() -> String{
        return "\(self.state_code_slug)-\(self.name_slug)-\(self.party)".trimmingCharacters(in: .whitespacesAndNewlines)
    }
    func partyColor() -> Color?{
        if self.party == "democrat"{
            return Color.blue
        }
        else if self.party == "republican" {
            return Color.red
        }
        return Color.black
    }
    
}


extension President {
    var image: Image {
        ImageStore.shared.image(name: generateImageName())
    }
}


