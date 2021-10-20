//
//  reverseAppTests.swift
//  reverseAppTests
//
//  Created by Дмитрий Фетюхин on 26.09.2021.
//

import XCTest
@testable import reverseApp
class reverseAppTests: XCTestCase {
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    func testReverseWords() throws {
        let helper = "Test string"
        let reverser = StringsWizard(sentence: helper)
        let resultOfFunc = reverser.reverse(sentence: helper)
        XCTAssert(resultOfFunc == "tseT gnirts")
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}
