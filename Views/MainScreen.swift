//
//  ContentView.swift
//  Favorite Things
//
//  Created by Devon Hansen on 2021-02-04.
//  Copyright © 2021 Devon Hansen. All rights reserved.
//

import SwiftUI

struct MainScreen: View {
    
    // create a copy of the data that we created in Thing.swift
    // A "store" in developer speak is just "a place that we keep data"
    var store = boomerMemorial
    
    var body: some View {
        
        NavigationView {
        
            List(boomerMemorial) { thing in

                NavigationLink(destination: ThingDetail(someThing: thing)) {
                    
                    ListItem(someThing: thing)
                    
                }
                

            }
           .navigationTitle("Boomer Memorial")
            
        }
    }
        
}
    struct MainScreen_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }






