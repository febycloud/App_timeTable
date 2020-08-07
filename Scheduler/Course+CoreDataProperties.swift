//
//  Course+CoreDataProperties.swift
//  Scheduler
//
//  Created by 云飛 on 8/7/20.
//  Copyright © 2020 Fei Yun. All rights reserved.
//
//

import Foundation
import CoreData


extension Course {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Course> {
        return NSFetchRequest<Course>(entityName: "Course")
    }

    @NSManaged public var classroom: String?
    @NSManaged public var course: String?
    @NSManaged public var teacher: String?
    @NSManaged public var time: Int32
    @NSManaged public var weekday: Int32

}
