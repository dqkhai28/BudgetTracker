//  
//  BTrackerAccountListViewController.swift
//  Budget-Tracker
//
//  Created by KaiD on 19/02/2022.
//

import UIKit

class BTrackerAccountListViewController: BaseViewController {
    // MARK: View IBOutlets declaration, make sure its private
    
    // MARK: View properties declaration
    let model: BTrackerAccountListModel = BTrackerAccountListModel()
    
    // MARK: View lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.initModel()
        self.initView()
    }
    
    // MARK: View IBActions
    
}

// MARK: View initial process, included UIs and logicals
extension BTrackerAccountListViewController {
    /// This function call all initial logical processes, included APIs
    func initModel() {
        
    }
    
    /// This function call all initial UIs processes, included color, font, size, etc.
    func initView() {
        
    }
}
