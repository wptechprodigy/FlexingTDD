//
//  Pizza.swift
//  FlexingTDD
//
//  Created by waheedCodes on 21/04/2022.
//

import Foundation

struct Pizza {

    let name: String
}

extension Pizza {

    static func loadPizzas() -> [Pizza] {
        return [
            .init(name: "Margherita"),
            .init(name: "Alata"),
            .init(name: "Oni'yo")
        ]
    }
}
