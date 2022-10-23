//
//  ContentView.swift
//  MobileBreadboard
//
//  Created by Alex Judge on 10/23/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ScrollView {
            Image("Road")
                .resizable()
                .scaledToFit()
            
            Text("The Road")
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            
            Text("Galway, Ireland")
                .font(.title)
                .foregroundColor(.secondary)
            
            Text(" \"Why do I smell\" ")
            
            Text("Wonderful session. Thank you very much for putting this tutorial together. It was awesome. I am a newbie and learned quite a lot from this tutorial. I will check out the other tutorials that you mentioned. God bless you!")
                .font(.title3)
                .bold()
                .padding(.top)
            Text("If you've watched this and decided you want to continue learning SwiftUI, I have great news: I have a 100% free series of tutorials that teach you everything you need to know, including lots of videos, interactive tests, challenges, and more. It's called the 100 Days of SwiftUI, and you can find it here: ")
        }
        .navigationTitle("Hello :)")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
