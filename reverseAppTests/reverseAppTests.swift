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
    
    func testReverseWordsWhenDefault() throws {
        
        var testExample = "Foxminded cool 24/7"
        var reverser = StringsWizard(sentence: testExample)
        var resultOfFunc = reverser.reverseWhenDefault(sentence: testExample)
        XCTAssert(resultOfFunc == "dednimxoF looc 24/7")
        
        testExample = "abcd efgh"
        reverser = StringsWizard(sentence: testExample)
        resultOfFunc = reverser.reverseWhenDefault(sentence: testExample)
        XCTAssert(resultOfFunc == "dcba hgfe")
        
        testExample = "a1bcd efg!h"
        reverser = StringsWizard(sentence: testExample)
        resultOfFunc = reverser.reverseWhenDefault(sentence: testExample)
        XCTAssert(resultOfFunc == "d1cba hgf!e")
        
    }
    
    func testReverseWordsWhenCustom() throws {
        
        let ignoreLetters = "xl"
        
        var testExample = "Foxminded cool 24/7"
        var reverser = StringsWizard(sentence: testExample)
        var resultOfFunc = reverser.reverseWhenCustom(sentence: testExample, ignoreText: ignoreLetters)
        XCTAssert(resultOfFunc == "dexdnimoF oocl 7/42")
        
        testExample = "abcd efgh"
        reverser = StringsWizard(sentence: testExample)
        resultOfFunc = reverser.reverseWhenCustom(sentence: testExample, ignoreText: ignoreLetters)
        XCTAssert(resultOfFunc == "dcba hgfe")
        
        testExample = "a1bcd efglh"
        reverser = StringsWizard(sentence: testExample)
        resultOfFunc = reverser.reverseWhenCustom(sentence: testExample, ignoreText: ignoreLetters)
        XCTAssert(resultOfFunc == "dcb1a hgfle")
        
    }

}
