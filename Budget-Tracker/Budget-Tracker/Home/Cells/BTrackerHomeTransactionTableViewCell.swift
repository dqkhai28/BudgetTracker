//
//  BTrackerHomeTransactionTableViewCell.swift
//  Budget-Tracker
//
//  Created by KaiD on 19/02/2022.
//

import UIKit

class BTrackerHomeTransactionTableViewCell: UITableViewCell {
    @IBOutlet private weak var icon: UIImageView!
    @IBOutlet private weak var transactionName: UILabel!
    @IBOutlet private weak var transactionInfo: UILabel!
    @IBOutlet private weak var time: UILabel!
    @IBOutlet private weak var amount: UILabel!
    @IBOutlet private weak var account: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupData(data: BTrackerTransactionEntity) {
        transactionName.text = data.category
        transactionInfo.text = data.note
        time.text = data.date
        amount.text = data.amount
        account.text = data.account
    }
}
