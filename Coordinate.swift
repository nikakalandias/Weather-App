//
//  Coordinate.swift
//  Weather-App
//
//  Created by Nika Kalandia on 22.02.2022.
//

import Foundation

struct Coordinate {
    let latitude : Double
    let longitude : Double
    
}

extension Coordinate : CustomStringConvertible {
    var description: String {
        return "\(latitude),\(longitude)"
    }
    static var defaultCoordinate : Coordinate {
        return Coordinate(latitude: 33.44, longitude: -94.04)
    }
}
