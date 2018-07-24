//
//  StationData.swift
//  BirminhamTrains
//
//  Created by Jack Wolverson on 14/01/2018.
//  Copyright © 2018 Jack Wolverson. All rights reserved.
//

import Foundation


final class StationData {
    
    static func generateStationData() -> [Station] {
        return [
            Station(name: "Birmingham New Street", location: "Birmingham"),
            Station(name: "Butlers Lane", location: "Four Oaks"),
            Station(name: "Four Oaks", location: "Four Oaks")
        ]
    }
}
