//
//  Tip.swift
//  MobileBreadboard
//
//  Created by Alex Judge on 10/24/22.
//

import Foundation


struct Tip: Decodable
{
    let text: String
    let children: [Tip]?
    //arrays can be empty, or safe wont cause a loop
    //optionality use with "?" shows something might be there, or not
    
}
