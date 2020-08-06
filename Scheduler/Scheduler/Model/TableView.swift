//
//  TableView.swift
//  Scheduler
//
//  Created by 云飛 on 8/6/20.
//  Copyright © 2020 Fei Yun. All rights reserved.
//

import SwiftUI

struct TableView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            ForEach(1..<8,id: \.self){row in
                HStack(){
                    ForEach(1..<8,id: \.self){col in
                        HStack(){
                            Text("").frame(width:50,height:50)
                        }
                        
                    }
                }
                
            }
        }
    }
}

struct TableView_Previews: PreviewProvider {
    static var previews: some View {
        TableView()
    }
}
