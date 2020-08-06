//
//  WeekdayHeader.swift
//  Scheduler
//
//  Created by 云飛 on 8/6/20.
//  Copyright © 2020 Fei Yun. All rights reserved.
//


import SwiftUI

extension Calendar {
    static let gregorian = Calendar(identifier: .gregorian)
}
extension Date {
    var startOfWeek: Date? {
        return Calendar.gregorian.date(from: Calendar.gregorian.dateComponents([.yearForWeekOfYear, .weekOfYear], from: self))
    }
}
struct WeekdayHeader: View {
    
    //var weekdaySymbols=weekdayName(weekdayNumber: 7)
    var body: some View {
        VStack{
        HStack(alignment: .center){
            ForEach(1..<8){nums in
                Text(weekdayName(weekdayNumber: nums))
                .font(.system(size: 20))
                .frame(minWidth: 0, maxWidth: .infinity)
                }
         }
        HStack(alignment: .center){
            ForEach(0..<7){nums in
                Text(getDays(date:firstWeek(num:nums)))
                .font(.system(size: 20))
                .frame(minWidth: 0, maxWidth: .infinity)
            }
        }
        }
         
    }
}

func weekdayName(weekdayNumber: Int) -> String {
    let calendar = Calendar.current
    let dayIndex = ((weekdayNumber - 1) + (calendar.firstWeekday - 1)) % 7
    return calendar.shortWeekdaySymbols[dayIndex]
}

func getDays(date:Date)->String{
    let dateFormatter = DateFormatter()
    dateFormatter.dateFormat = "dd"
    let today=dateFormatter.string(from: date)
    return today
}

func firstWeek(num:Int)->Date{
    let today = Date()
    let calendar = Calendar.current
    let weekday = 1-calendar.component(.weekday, from: today)+num
    let target=calendar.date(byAdding:.day,value:weekday,to: today)!
    return target
}

struct WeekdayHeader_Previews: PreviewProvider {
    static var previews: some View {
        WeekdayHeader()
    }

}

