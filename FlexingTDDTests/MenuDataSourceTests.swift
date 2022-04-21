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
        let dataSource = MenuDataSource()

        XCTAssertEqual(dataSource.numberOfSections, 1)
    }

    func test_numberOfRowInSection() {
        let dataSource = MenuDataSource()

        XCTAssertEqual(dataSource.numberOfRows(inSection: 0), 3)
    }
}