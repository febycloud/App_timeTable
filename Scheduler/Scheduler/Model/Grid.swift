//
//  Grid.swift
//  Scheduler
//
//  Created by 云飛 on 8/6/20.
//  Copyright © 2020 Fei Yun. All rights reserved.
//

import SwiftUI

struct Grid: View {
    @State  var className:String="Computer Science Academy"
    @State  var room:String="H4020"
    var body: some View {
        // Create a vertical layout for the card "frame"
        VStack {
            // Create a horizontal layout to "push" the text to the left edge with a Spacer()
            HStack {
                // Create a vertical layout for each text component to stack on top of each other
                VStack(alignment: .leading) {
                    Text(className)
                        .font(.system(size:7))
                        // Style the text using system styles
                        .fontWeight(.bold)
                        // Use a color from a color set (a theming file) in the assets catalog, so that it will dynamically shift for dark and light mode
                        .foregroundColor(.white)
                    Spacer()
                    Text(room)
                        .font(.system(size:8))
                        .fontWeight(.regular)
                        .foregroundColor(.white)
                    
                }
                Spacer()
            }
            .padding(EdgeInsets(top:3,leading:4,bottom:3,trailing: 1))
        }
        // Specify the size of the card and its styles
        .frame(width: 50, height: 50)
        .background(Color(.gray))
        .cornerRadius(2)
        .shadow(radius: 10)
    }
}

struct Grid_Previews: PreviewProvider {
    static var previews: some View {
        Grid()
    }
}
