//
//  AddClass.swift
//  Scheduler
//
//  Created by 云飛 on 8/6/20.
//  Copyright © 2020 Fei Yun. All rights reserved.
//

import SwiftUI

struct AddClass: View {
    @State private var course:String=""
    @State private var teacher:String=""
    @State private var classroom:String=""
    @State private var weekdayIndex=0
    @State private var timeIndex=0
    var weekdayOption=["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"]
    var timeOption=["1","2","3","4","5","6","7","8"]
    var body: some View {
        NavigationView{
            Form{
                Section(header: Text("COURSE NAME")){
                    TextField("Course Name",text:$course)
                }
                
                Section(header: Text("TEACHER")){
                    TextField("Teacher",text:$teacher)
                }
                
                Section(header: Text("CLASS ROOM")){
                                   TextField("Classroom",text:$classroom)
                               }
                
                Section(header: Text("TIME")){
                Picker(selection: $weekdayIndex, label: Text("Weekdays")) {
                        ForEach(0 ..< weekdayOption.count) {
                            Text(self.weekdayOption[$0])
                        }
                    }
                Picker(selection: $timeIndex, label: Text("Period")) {
                    ForEach(0 ..< timeOption.count) {
                        Text(self.timeOption[$0])
                    }
                }
                }
                Button(action:{}){
                    Text("Save")
                    .frame(maxWidth: .infinity, alignment: .center)
                }
            }
            .navigationBarTitle(Text("Add Class"))
        }
    
    }
}

struct AddClass_Previews: PreviewProvider {
    static var previews: some View {
        AddClass()
    }
}
