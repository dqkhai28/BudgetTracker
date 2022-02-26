//  
//  BTrackerHomeViewController+Protocols.swift
//  Budget-Tracker
//
//  Created by KaiD on 19/02/2022.
//

import UIKit

// MARK: Implements protocols like tableview delegate, datasources and others
extension BTrackerHomeViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return BTrackerHomeSectionType.allCases.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let sectionType = BTrackerHomeSectionType(rawValue: section)
        switch sectionType {
        case .total, .budget, .compare:
            return 1
        case .history:
            return model.historyDataSource.count
        case .lent:
            return model.lentBorrowDataSource.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellType = BTrackerHomeSectionType(rawValue: indexPath.section)
        switch cellType {
        case .total, . budget, . compare:
            return UITableViewCell()
        case .history:
            let cell = tableView.dequeueReusableCell(withIdentifier: BTrackerHomeTransactionTableViewCell.className, for: indexPath) as! BTrackerHomeTransactionTableViewCell
            cell.setupData(data: model.historyDataSource[indexPath.row])
            return cell
        case .lent:
            let cell = tableView.dequeueReusableCell(withIdentifier: BTrackerHomeTransactionTableViewCell.className, for: indexPath) as! BTrackerHomeTransactionTableViewCell
            cell.setupData(data: model.lentBorrowDataSource[indexPath.row])
            return cell
        default:
            return UITableViewCell()
        }
    } 
}
