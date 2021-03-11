//
//  Segments.swift
//  Favorite Things
//
//  Created by Devon Hansen on 2021-02-10.
//  Copyright © 2021 Devon Hansen. All rights reserved.
//

import Foundation


struct Segment: Identifiable {
    let id = UUID()
    let image: String
    let text: String
}
