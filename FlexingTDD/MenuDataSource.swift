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
            guard section == 0 else { return 0 }
            return pizzas.count
        }

    func item(forRow row: Int, inSection section: Int) -> MenuItem? {
        guard section == 0 else { return .none }
        guard row >= 0,
              pizzas.count > row else {
                  return .none
              }
        return MenuItem(pizza: pizzas[row])
    }
}
