//
//  TipsView.swift
//  MobileBreadboard
//
//  Created by Alex Judge on 10/24/22.
//

import SwiftUI

struct TipsView: View {
    let tips: [Tip]
    
    init()
    {
        // "!" will crash app if fails
        let url = Bundle.main.url(forResource: "tips",
            withExtension: "json")!
        let data = try! Data(contentsOf: url)
        tips = try! JSONDecoder().decode([Tip].self, from: data)
    }
    var body: some View {
        // uses unique tip as ID, or identifier 
        List(tips, id: \.text, children: \.children) { tip in
            if tip.children != nil{
                Label(tip.text, systemImage: "quote.bubble")
                    .font(.headline)
            } else{
                Text(tip.text)
            }
        }
        .navigationTitle("Tips")
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}
