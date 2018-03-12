//
//  CourseLocation.swift
//  uguide
//
//  Created by Hannibal B. Moulvad on 26/02/2018.
//  Copyright © 2018 Sebastian Frelle Koch. All rights reserved.
//

import UIKit

class CourseLocation: Model {
    var building: String
    var room: String
    var university: String
    
    init(building: String, room: String, university: String) {
        self.building = building
        self.room = room
        self.university = university
    }
}
