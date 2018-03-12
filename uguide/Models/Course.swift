//
//  Courses.swift
//  uguide
//
//  Created by Hannibal B. Moulvad on 26/02/2018.
//  Copyright © 2018 Sebastian Frelle Koch. All rights reserved.
//

import UIKit

class Course {
    var courseName: String
    var courseID: Int
    var courseLocation: CourseLocation
    
    init(courseName: String, courseID: Int, courseLocation: CourseLocation) {
        self.courseName = courseName
        self.courseID = courseID
        self.courseLocation = courseLocation
    }
    
}
