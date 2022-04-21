//
//  MenuItem.swift
//  FlexingTDD
//
//  Created by waheedCodes on 21/04/2022.
//

import Foundation

struct MenuItem {

    let title: String
}

extension MenuItem {

    init(pizza: Pizza) {
        self.init(title: pizza.name)
    }
}
