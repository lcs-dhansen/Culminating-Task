//
//  DeleteGoal.swift
//  Culminating Task
//
//  Created by Devon Hansen on 2021-03-23.
//

import SwiftUI

struct DeleteGoal: View {
    
    
    @ObservedObject var store: TaskStore
    @ObservedObject var task: Task
    
    @Binding var showing: Bool
    
    var body: some View {
        Text("Are you sure you want to Delete the Goal?")
        
        Button("Delete") {
            task.deleted = true
        }
        
    }
}

struct DeleteGoal_Previews: PreviewProvider {
    static var previews: some View {
        DeleteGoal(store: testStore, task: testData[0], showing: .constant(true))
    }
}
