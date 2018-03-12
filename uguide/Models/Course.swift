//
//  Courses.swift
//  uguide
//
//  Created by Hannibal B. Moulvad on 26/02/2018.
//  Copyright © 2018 Sebastian Frelle Koch. All rights reserved.
//

import Foundation

class Course: Model {
    var name: String
    var id: String
    var courseLocation: CourseLocation?
    
    init(name: String, id: String, courseLocation: CourseLocation? = nil) {
        self.name = name
        self.id = id
        self.courseLocation = courseLocation
    }
}

struct CourseLocation {
    var campus: Campus
    var building: Building
    var room: Room
    
    init(campus: Campus, building: Building, room: Room) {
        self.campus = campus
        self.building = building
        self.room = room
    }
}
