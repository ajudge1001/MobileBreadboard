//
//  Location.swift
//  MobileBreadboard
//
//  Created by Alex Judge on 10/24/22.
//

import Foundation

struct Location: Decodable
{
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory: String
    
    //Static occurs only once instead of creatiing every time for every location
    // let would happen infinite times since there could be infinite locations so
    // have to make infinite locaitons
    static let example = Location(id: 1, name: "Great Smokey Mountains", country: "United States", description: "A great place to visit.", more: "More text here.", latitude: 35.6532, longitude: -83.5070, heroPicture: "smokies", advisory: "Beware of the bears!")
}
