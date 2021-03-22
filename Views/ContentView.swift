//
//  ContentView.swift
//  Culminating Task
//
//  Created by Devon Hansen on 2021-03-10.
//

import SwiftUI

struct ContentView: View {
    
    
    @State var GoToMainScreen:Bool = false
    @ObservedObject var store: TaskStore
    @Binding var showing: Bool
    
    
    var body: some View {
        ZStack {
            if (GoToMainScreen) {
                MainScreen(store: testStore, showing: .constant(true))
                //What should I do if I created another swiftui view under the name View2?
                //Just calling View2() like that causes lag as described in the linked question before it was deleted, if from view2 I switch back to view1 and so on.
                //If I directly put the code of View2 here, then adding other views would get too messy.
            } else {
                ZStack {
                    
                    Image("Image1")
                        .resizable()
                        .scaledToFit()
                        .rotationEffect(Angle(degrees: 90))
                        .frame(width: 900, height: 900)
                    
                    RoundedRectangle(cornerRadius: 30)
                        .fill(Color.black)
                        .frame(width: 110, height: 70)
                    
                    
                    RoundedRectangle(cornerRadius: 25)
                        .fill(Color.red)
                        .frame(width: 100, height: 60)
                    
                    
                    Button(action: {self.GoToMainScreen.toggle()}) {
                        Text("Start")
                            .foregroundColor(Color.black)
                    }
                    
                   
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: testStore, showing: .constant(true))
    }
}



