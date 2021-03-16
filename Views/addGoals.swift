//
//  addGoals.swift
//  Culminating Task
//
//  Created by Devon Hansen on 2021-03-16.
//

import SwiftUI

struct addGoals: View {
    
    @State private var goalName = ""
    @State private var goalDesc = ""
    @State private var goalValue = ""
    @State private var goalParts = ""
    
    var body: some View {
        NavigationView{
            VStack{
                    TextField("Goal Name", text: $goalName)
                    
                    TextField("Goal Description", text: $goalDesc)
                
                    TextField("Goal Parts", text: $goalParts)
                        .keyboardType(.decimalPad)
                  
                    TextField("Goal Value", text: $goalValue)
                        .keyboardType(.decimalPad)
                
            }
        }
        
    }
}

struct addGoals_Previews: PreviewProvider {
    static var previews: some View {
        addGoals()
    }
}
