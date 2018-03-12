//
//  University.swift
//  uguide
//
//  Created by Sebastian Frelle Koch on 3/12/18.
//  Copyright © 2018 Sebastian Frelle Koch. All rights reserved.
//

import Foundation

class University {
    var name: String
    
    var uid: String?
    var courses: [Course]?
    
    init(name: String, courses: [Course] = [Course]()) {
        self.name = name
//        self.uid = // Generate unique ID (uuid package)
//        Initialize course array
    }
}
