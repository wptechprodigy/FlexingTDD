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
        let dataSource = MenuDataSource(pizzas: [.fixture()])

        XCTAssertEqual(dataSource.numberOfSections, 1)
    }

    func test_numberOfRowInSection() {
        let samplePizzas: [Pizza] = [
            .fixture(),
            .fixture(),
            .fixture()
        ]
        let dataSource = MenuDataSource(pizzas: samplePizzas)

        XCTAssertEqual(dataSource.numberOfRows(inSection: 0), 3)
    }

    func test_numberOfRows_inOutOfBoundsSection_isZero() {
        let samplePizzas: [Pizza] = [
            .fixture(),
            .fixture(),
            .fixture()
        ]
        let dataSource = MenuDataSource(pizzas: samplePizzas)

        XCTAssertEqual(dataSource.numberOfRows(inSection: 1), 0)
        XCTAssertEqual(dataSource.numberOfRows(inSection: -1), 0)
    }

    func test_expectedItem_atARowAndSection() {
        let samplePizzas: [Pizza] = [
            .fixture(name: "Margherita"),
            .fixture(name: "Capricciosa")
        ]
        let dataSource = MenuDataSource(pizzas: samplePizzas)

        XCTAssertEqual(dataSource.item(forRow: 0, inSection: 0)?.title, "Margherita")
        XCTAssertEqual(dataSource.item(forRow: 1, inSection: 0)?.title, "Capricciosa")
    }

    func test_item_outOfBoundsRowAndSection_isNil() {
        let samplePizzas: [Pizza] = [
            .fixture(name: "Margherita"),
            .fixture(name: "Capricciosa")
        ]
        let dataSource = MenuDataSource(pizzas: samplePizzas)

        XCTAssertNil(dataSource.item(forRow: 2, inSection: 0))
        XCTAssertNil(dataSource.item(forRow: 0, inSection: 1))
        XCTAssertNil(dataSource.item(forRow: 2, inSection: 1))
        XCTAssertNil(dataSource.item(forRow: -1, inSection: -1))
    }
}
