//  
//  BTrackerHomeViewController.swift
//  Budget-Tracker
//
//  Created by KaiD on 19/02/2022.
//

import UIKit

class BTrackerHomeViewController: BaseViewController {
    @IBOutlet private weak var homeTableView: UITableView!
    
    let model: BTrackerHomeModel = BTrackerHomeModel()
    
    // MARK: View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initModel()
        self.initView()
    }
    
    // MARK: View IBActions
    
}

// MARK: View initial process, included UIs and logicals
extension BTrackerHomeViewController {
    /// This function call all initial logical processes, included APIs
    func initModel() {
        model.stubData()
    }
    
    /// This function call all initial UIs processes, included color, font, size, etc.
    func initView() {
        setupTableView()
    }
    
    private func setupTableView() {
        homeTableView.delegate = self
        homeTableView.dataSource = self
        homeTableView.registerCell(BTrackerHomeTransactionTableViewCell.self)
    }
}
