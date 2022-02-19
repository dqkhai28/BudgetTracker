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

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
