//
//  Locations.swift
//  MobileBreadboard
//
//  Created by Alex Judge on 10/24/22.
//

import Foundation



class Locations: ObservableObject
{
    //use struct for data you dont want to use everywhere, unique
    //class designed to be "shared"
    //Observable Object is something siwft watches to change
    //bracket means holds array, (hold more than one)
    let places: [Location]
    
    var primary: Location
    {
        places[0]
    }
    
    
    init()
    {
        // "!" will crash app if fails
        let url = Bundle.main.url(forResource: "locations",
            withExtension: "json")!
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
}
