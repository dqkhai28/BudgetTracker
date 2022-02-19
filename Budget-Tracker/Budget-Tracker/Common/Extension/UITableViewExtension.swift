//
//  UITableViewExtension.swift
//  Budget-Tracker
//
//  Created by KaiD on 19/02/2022.
//

import Foundation
import UIKit

public extension UITableView {
    func registerCell<T: UITableViewCell>(_ type: T.Type) {
        let className = String(describing: T.self)
        self.register(UINib(nibName: className, bundle: nil), forCellReuseIdentifier: className)
    }
}

public extension UICollectionView {
    func registerCell<T: UICollectionViewCell>(_ type: T.Type) {
        let className = String(describing: T.self)
        self.register(UINib(nibName: className, bundle: nil), forCellWithReuseIdentifier: className)
    }
}

public extension UITableView {
    func registerView<T: UITableViewHeaderFooterView>(_ type: T.Type) {
        let className = String(describing: T.self)
        self.register(UINib(nibName: className, bundle: nil), forHeaderFooterViewReuseIdentifier: className)
    }
}
