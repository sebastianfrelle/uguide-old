//
//  Courses.swift
//  uguide
//
//  Created by Hannibal B. Moulvad on 26/02/2018.
//  Copyright © 2018 Sebastian Frelle Koch. All rights reserved.
//

import Foundation

class Course: Model {
    var courseName: String
    var courseID: String
    var courseLocation: CourseLocation
    
    init(courseName: String, courseID: String, courseLocation: CourseLocation) {
        self.courseName = courseName
        self.courseID = courseID
        self.courseLocation = courseLocation
    }
}
