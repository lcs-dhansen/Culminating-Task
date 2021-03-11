//
//  ListItem.swift
//  Favorite Things
//
//  Created by Devon Hansen on 2021-02-08.
//  Copyright © 2021 Devon Hansen. All rights reserved.
//

import SwiftUI

struct ListItem: View {
    
    var someThing: Thing
    
    var body: some View {
        HStack {
            Text(someThing.hint)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            VStack(alignment: .leading) {
                Text(someThing.title)
                
                Text(someThing.summary)
                    .font(.subheadline)
            }
            
            Spacer()
        }
    }
}


struct ListItem_Previews: PreviewProvider {
    static var previews: some View {
        ListItem(someThing: boomerMemorial[0])
            .preferredColorScheme(.dark)
            .padding()
    }
}
