//
//  StationsTableViewController.swift
//  BirminhamTrains
//
//  Created by Jack Wolverson on 14/01/2018.
//  Copyright © 2018 Jack Wolverson. All rights reserved.
//

import UIKit

class StationsTableViewController: UITableViewController {
    

    var stations = StationData.generateStationData()
}
extension StationsTableViewController {
    
    @IBAction func cancelToStationViewController(_ segue: UIStoryboardSegue) {
    }
}
extension StationsTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return stations.count
    }
    
    override func tableView(_ tableView: UITableView,
                            cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StationNameCell", for: indexPath)
        
        let station = stations[indexPath.row]
        cell.textLabel?.text = station.name
        cell.detailTextLabel?.text = station.location
        return cell
    }
}
