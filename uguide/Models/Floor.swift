//
//  Floor.swift
//  uguide
//
//  Created by Sebastian Frelle Koch on 3/12/18.
//  Copyright © 2018 Sebastian Frelle Koch. All rights reserved.
//

import Foundation

class Floor {
    var rooms: [Room]
    var beacons: [Beacon]
    
    init(rooms: [Room] = [Room](), beacons: [Beacon] = [Beacon]()) {
        self.rooms = rooms
        self.beacons = beacons
    }
}
