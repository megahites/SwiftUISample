//
//  ContentView.swift
//  Demo
//
//  Created by Hitesh Chauhan on 25/9/2562 BE.
//  Copyright © 2562 Hitesh Chauhan. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    var body: some View {
        List {
            
            MapView().frame(height:400)
            HStack{
            CircleImage().frame( height: 200, alignment: .center).clipShape(Circle()).scaledToFit()
                Text("Hitesh")
                    .font(.title).font(.system(size: 12))
            }
            Text("Address")
                .font(.title)
                Text("Joshua Tree National Park\nCalifornia")
                    .font(.subheadline)
            
        }
    }
}

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
