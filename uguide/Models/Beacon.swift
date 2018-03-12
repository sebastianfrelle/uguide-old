//
//  Beacon.swift
//  uguide
//
//  Created by Sebastian Frelle Koch on 3/12/18.
//  Copyright © 2018 Sebastian Frelle Koch. All rights reserved.
//

import Foundation

class Beacon: Model {
    var position: Position
    
    convenience init(x: Double, y: Double) {
        let pos = Position(x, y)
        
        self.init(position: pos)
    }
    
    init(position: Position) {
        self.position = position
    }
}

struct Position {
    var x, y: Double
    
    init(_ x: Double, _ y: Double) {
        self.x = x
        self.y = y
    }
}
