//
//  UIColorExtension.swift
//  Budget-Tracker
//
//  Created by KaiD on 19/02/2022.
//

import UIKit

public extension UIColor {
    convenience init?(hexString: String) {
        let red, green, blue: CGFloat
        
        if hexString.hasPrefix("#") {
            let start = hexString.index(hexString.startIndex, offsetBy: 1)
            let hexColor = String(hexString[start...])
            
            if hexColor.count == 6 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt32 = 0
                
                if scanner.scanHexInt32(&hexNumber) {
                    red = CGFloat((hexNumber & 0xFF0000) >> 16) / 255.0
                    green = CGFloat((hexNumber & 0x00FF00) >> 8) / 255.0
                    blue = CGFloat(hexNumber & 0x0000FF) / 255.0
                    
                    self.init(red: red, green: green, blue: blue, alpha: 1.0)
                    return
                }
            }
        }
        
        return nil
    }
    
    convenience init?(hexString: String, alpha: Double) {
        let red, green, blue: CGFloat
        
        if hexString.hasPrefix("#") {
            let start = hexString.index(hexString.startIndex, offsetBy: 1)
            let hexColor = String(hexString[start...])
            
            if hexColor.count == 6 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt32 = 0
                
                if scanner.scanHexInt32(&hexNumber) {
                    red = CGFloat((hexNumber & 0xFF0000) >> 16) / 255.0
                    green = CGFloat((hexNumber & 0x00FF00) >> 8) / 255.0
                    blue = CGFloat(hexNumber & 0x0000FF) / 255.0
                    
                    self.init(red: red, green: green, blue: blue, alpha: CGFloat(alpha))
                    return
                }
            }
        }
        
        return nil
    }
}
