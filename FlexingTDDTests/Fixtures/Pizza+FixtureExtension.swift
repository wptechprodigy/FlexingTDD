//
//  Pizza+FixtureExtension.swift
//  FlexingTDDTests
//
//  Created by waheedCodes on 21/04/2022.
//

@testable import FlexingTDD
import Foundation

extension Pizza {

    static func fixture(
        name: String = "Margherita"
    ) -> Pizza {
        return Pizza(name: name)
    }
}
