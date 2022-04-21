//
//  MenuDataSourceTests.swift
//  FlexingTDDTests
//
//  Created by waheedCodes on 21/04/2022.
//

@testable import FlexingTDD
import XCTest

final class MenuDataSourceTests: XCTestCase {

    func test_has_oneSection() {
        let dataSource = MenuDataSource(pizzas: [Pizza()])

        XCTAssertEqual(dataSource.numberOfSections, 1)
    }

    func test_numberOfRowInSection() {
        let samplePizzas: [Pizza] = [
            Pizza(),
            Pizza(),
            Pizza()
        ]
        let dataSource = MenuDataSource(pizzas: samplePizzas)

        XCTAssertEqual(dataSource.numberOfRows(inSection: 0), 3)
    }

    func test_numberOfRows_inOutOfBoundsSection_isZero() {
        let samplePizzas: [Pizza] = [
            Pizza(),
            Pizza(),
            Pizza()
        ]
        let dataSource = MenuDataSource(pizzas: samplePizzas)

        XCTAssertEqual(dataSource.numberOfRows(inSection: 1), 0)
        XCTAssertEqual(dataSource.numberOfRows(inSection: -1), 0)
    }
}
