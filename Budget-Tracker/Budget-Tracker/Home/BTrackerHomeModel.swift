//  
//  BTrackerHomeModel.swift
//  Budget-Tracker
//
//  Created by KaiD on 19/02/2022.
//

import Foundation

class BTrackerHomeModel: NSObject {
    // MARK: Model default closure, remove if unused
    var onGetDataFail: ((_ error: Error) -> Void)?
    var onGetDataSuccess: (() -> Void)?
    
    var historyDataSource: [BTrackerTransactionEntity] = []
    var lentBorrowDataSource: [BTrackerTransactionEntity] = []
    
    func stubData() {
        historyDataSource = [BTrackerTransactionEntity(category: "Eating",
                                                       note: "Di an gi do",
                                                       date: "14/02/2022",
                                                       amount: "200000",
                                                       account: "My money"),
                             BTrackerTransactionEntity(category: "Drinking",
                                                       note: "Di uong gi do",
                                                       date: "15/02/2022",
                                                       amount: "300000",
                                                       account: "My money"),
                             BTrackerTransactionEntity(category: "Shopping",
                                                       note: "Mua may thu linh tinh",
                                                       date: "20/02/2022",
                                                       amount: "2000000",
                                                       account: "Home money")]
        
        lentBorrowDataSource = [BTrackerTransactionEntity(category: "Loan",
                                                          note: "Cho muon 10tr dau tu",
                                                          date: "30/02/2022",
                                                          amount: "10000000")]
    }
}
