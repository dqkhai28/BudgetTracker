//  
//  BTrackerHomeViewController+Protocols.swift
//  Budget-Tracker
//
//  Created by KaiD on 19/02/2022.
//

import UIKit

// MARK: Implements protocols like tableview delegate, datasources and others
extension BTrackerHomeViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: BTrackerHomeTransactionTableViewCell.className, for: indexPath) as! BTrackerHomeTransactionTableViewCell
        return cell
    } 
}
