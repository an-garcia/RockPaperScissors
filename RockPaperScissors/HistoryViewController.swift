//
//  HistoryViewController.swift
//  RockPaperScissors
//
//  Created by xengar on 2017-11-19.
//  Copyright © 2017 xengar. All rights reserved.
//

import UIKit

class HistoryViewController: UIViewController, UITableViewDataSource {

    // History
    var history : [RPSMatch]!
    
    
    // Use this string property as your reuse identifier,
    // Storyboard has been set up for you using this String.
    let cellReuseIdentifier = "MyCellReuseIdentifier"
    
    // MARK: UITableViewDataSource
    
    // Add the two essential table data source methods here
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // Implement method to return the correct number of rows.
        return self.history.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Implement method to return cell with the correct reuseidentifier and populated with the correct data.
        let cell =  tableView.dequeueReusableCell(withIdentifier: self.cellReuseIdentifier)!
        let historyItem = self.history[(indexPath as NSIndexPath).row]
        
        cell.textLabel?.text = historyItem.p1.description
        cell.detailTextLabel?.text = historyItem.p2.description
        
        return cell
    }
    
    @IBAction func closeWindow(_ sender: AnyObject) {
        dismiss(animated: true, completion: nil)
    }

}
