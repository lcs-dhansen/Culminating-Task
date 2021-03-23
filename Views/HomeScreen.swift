//
//  HomeScreen.swift
//  Culminating Task
//
//  Created by Devon Hansen on 2021-03-10.
//

import SwiftUI

struct HomeScreen: View {
    
    @ObservedObject var store: TaskStore
    
    var body: some View {
        Text("\(store.totalScore)/100")
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen(store: testStore)
    }
}
