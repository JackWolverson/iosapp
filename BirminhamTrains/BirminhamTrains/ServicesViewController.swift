//
//  ServicesViewController.swift
//  BirminhamTrains
//
//  Created by Jack Wolverson on 15/01/2018.
//  Copyright © 2018 Jack Wolverson. All rights reserved.
//

import UIKit

class ServicesViewController: UIViewController {

    @IBOutlet weak var ServiceCell: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let username = "rttapi_JackWolverson"
        let password = "1415176e0da75b1ba47cb684f30ee5a430632d5f"
        let logindata = String(format : "%@:%@", username, password).data(using: String.Encoding.utf8)!
        let base64String = logindata.base64EncodedString()
        let url: URL = URL(string: "https://api.rtt.io/api/v1/json/search/BHM" )!
        var request = URLRequest(url:url)
        request.httpMethod = "GET"
        request.setValue("Basic \(base64String)", forHTTPHeaderField: "Authorization")
        let task = URLSession.shared.dataTask(with: request) {data, response, error in guard let data = data, error == nil else {
            print("\(error!)")
            return
            }
            let dataAsString = String(data: data, encoding: .utf8)
            DispatchQueue.main.async {
                // code here
                self.ServiceCell.text = dataAsString!
            }
        }
        task.resume()
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
