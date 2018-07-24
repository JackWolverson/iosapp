//
//  ListTimelineViewController.swift
//  
//
//  Created by Jack Wolverson on 15/01/2018.
//

import UIKit
import TwitterKit

class ListTimelineViewController: TWTRTimelineViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

            // Show a timeline of @jack's Tweets
            let client = TWTRAPIClient()
            self.dataSource = TWTRUserTimelineDataSource(screenName: "nationalrailenq", apiClient: client)
            title = "Live Information"
    }

}

