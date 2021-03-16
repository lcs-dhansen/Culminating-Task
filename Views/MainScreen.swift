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
            
            ZStack{
                Image("Image2")
                    .resizable()
                    .scaledToFit()
                    .rotationEffect(Angle(degrees: 90))
                    .frame(width: 800, height: 800)
            
                List{

                    NavigationLink("Earn Points", destination: earnPoints())
                        
                    NavigationLink("Add Goals", destination: addGoals())
                    
                    NavigationLink("Home Screen", destination: HomeScreen())
                        
                }
                .frame(width: 300, height: 700)
            }
            
           .navigationTitle("Main Screen")
            
        }
    }
        
}
    struct MainScreen_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }






