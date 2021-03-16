//
//  Thing.swift
//  Favorite Things
//
//  Created by Devon Hansen on 2021-02-09.
//  Copyright © 2021 Devon Hansen. All rights reserved.
//

import Foundation


//structure definition
    struct Thing: Identifiable {
        
        
        let id = UUID()
        let hint: String
        let title: String
        let summary: String
     //   let transfer: String
        
    }

// populate the model
//make an array of thing instances

let boomerMemorial = [
    
    Thing(hint: "",
          title: "Schedule",
          summary: "Schedule Your Day"
      //    transfer: "Motivation"
          ),
    
    Thing(hint: "",
          title: "Goals",
          summary: "Set your Goals"
     //     transfer: "Goals"
          ),
    
    Thing(hint: "",
          title: "Boomer3",
          summary: "Boomer in the garage with us"
        //  transfer: "Schedule"
          ),
    
//    Thing(hint: "🦮",
//          title: "Boomer4",
//          summary: "Boomer on a car trip",
//          segments: [
//          Segment(image: "Boomer4",
//                  text: """
//                    Boomer loved being in the car with us and would get very upset if we left him at home.
//              """),
//        ]),
//
//
//    Thing(hint: "🦮",
//          title: "Boomer5",
//          summary: "Boomer sitting with me",
//          segments: [
//          Segment(image: "Boomer5",
//                  text: """
//                    Boomer liike to sit on around and with us all the time. He did it when we were watching movies, reading books, or doign anything.
//              """),
//        ]),
//
//    Thing(hint: "🦮", title: "Boomer6",
//          summary: "Boomer acting cute for attention",
//          segments: [
//          Segment(image: "Boomer6",
//                  text: """
//                    Boomer would do anything for attetnion from creating a mess to being cute.
//              """),
//        ]),
//
//    Thing(hint: "🦮", title: "Boomer7",
//          summary: "We love you Boomer",
//          segments: [
//          Segment(image: "Boomer7",
//                  text: """
//                    This is a picture of Boomer less than a week before he passed away. Here he is still tired from a visit to the vet and is sleeping peacefully. We miss him a lot.
//              """),
//        ]),
         
    
]

