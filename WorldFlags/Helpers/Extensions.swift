//
//  Extensions.swift
//  WorldFlags
//
//  Created by Mohamed Alwakil on 2023-01-19.
//

import SwiftUI

extension CGPoint: Hashable {
    public func hash(into hasher: inout Hasher) {

        hasher.combine(x)
        hasher.combine(y)
    }
}
