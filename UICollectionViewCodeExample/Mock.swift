//
//  Mock.swift
//  UICollectionViewCodeExample
//
//  Created by Erika C. Matesz Bueno on 30/08/22.
//

import Foundation
import UIKit

struct Mock {
    var color: UIColor {
        return .random
    }
    var text: String {
        return .random
    }
}

extension CGFloat {
    static var random: CGFloat {
        return CGFloat(arc4random()) / CGFloat(UInt32.max)
    }
}

extension UIColor {
    static var random: UIColor {
        return UIColor(red: .random, green: .random, blue: .random, alpha: 1.0)
    }
}

extension String {
    static var random: String {
      let letters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
      return String((0..<3).map{ _ in letters.randomElement()! })
    }
}
