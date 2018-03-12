//
//  Beacon.swift
//  uguide
//
//  Created by Sebastian Frelle Koch on 3/12/18.
//  Copyright © 2018 Sebastian Frelle Koch. All rights reserved.
//

import Foundation

class Beacon {
    var position: Position
    
    var uid: String
    
    convenience init(x: Double, y: Double) {
        self.init(position: Position(x, y))
    }
    
    init(position: Position) {
        self.position = position
        
        self.uid = UUID().uuidString
    }
}

struct Position {
    var x, y: Double
    
    init(_ x: Double, _ y: Double) {
        self.x = x
        self.y = y
    }
}
