//
//  ListTimelineViewController.swift
//  BirminhamTrains
//
//  Created by Jack Wolverson on 15/01/2018.
//  Copyright © 2018 Jack Wolverson. All rights reserved.
//

import UIKit
import TwitterKit

class ListTimelineViewController: TWTRTimelineViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let client = TWTRAPIClient()
        let dataSource = TWTRUserTimelineDataSource(screenName: "WestMidRailway", apiClient: client)
        print(dataSource)
        
}
}
