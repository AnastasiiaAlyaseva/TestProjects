//
//  UIDevice+Extension.swift
//  DynamicIslandArticle
//
//  Created by Anastasiia Alyaseva on 28.03.2023.
//

import SwiftUI

extension UIDevice {
    static var hasDynamicIsland : Bool {
        ["iPhone 14 Pro", "iPhone 14 Pro Max"].contains(current.name)
    }
}
