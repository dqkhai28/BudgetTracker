//
//  NSObjectExtension.swift
//  Budget-Tracker
//
//  Created by KaiD on 19/02/2022.
//

import Foundation
import UIKit

public extension NSObject {
    class var className: String {
        String(describing: self)
    }
}
