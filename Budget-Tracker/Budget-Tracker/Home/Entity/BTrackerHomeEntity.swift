//
//  BTrackerHomeEntity.swift
//  Budget-Tracker
//
//  Created by KaiD on 26/02/2022.
//

import Foundation
import UIKit

enum BTrackerHomeSectionType: Int, CaseIterable {
    case total, budget, history, lent, compare
    
    var sectionTitle: String {
        switch self {
        case .total:
            return .empty
        case .budget:
            return "Budget"
        case .history:
            return "Recent transactions"
        case .lent:
            return "Money lent/borrowed"
        case .compare:
            return "Expensive vs Income"
        }
    }
}

struct BTrackerTransactionEntity {
    var category: String
    var note: String
    var date: String
    var amount: String
    var account: String = .empty
}
