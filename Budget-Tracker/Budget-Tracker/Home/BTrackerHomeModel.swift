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
}
