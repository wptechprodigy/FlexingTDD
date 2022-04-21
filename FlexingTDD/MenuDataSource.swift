//
//  MenuDataSource.swift
//  FlexingTDD
//
//  Created by waheedCodes on 21/04/2022.
//

import Foundation

struct MenuDataSource {

    let pizzas: [Pizza]

    let numberOfSections = 1

    init(pizzas: [Pizza]) {
        self.pizzas = pizzas
    }

    func numberOfRows(
        inSection section: Int) -> Int {
        return pizzas.count
    }
}
