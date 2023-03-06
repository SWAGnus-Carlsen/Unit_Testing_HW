//
//  Unit_Testing_HWTests.swift
//  Unit_Testing_HWTests
//
//  Created by Vitaliy Halai on 6.03.23.
//

import XCTest
@testable import Unit_Testing_HW

final class Unit_Testing_HWTests: XCTestCase {
 
    var sut: MathService!
    
    override func setUp() {
        super.setUp()
        sut = MathService()
    }

    override func tearDown() {
        
        sut = nil
        super.tearDown()
    }

    func testSum() {
        sut.sum(x: 64, y: 36)
        XCTAssert(sut.intResult == 100, "the sum has to be equal to 100")
    }
    
    func testMultiplication() {
        sut.multiplication(x: 36, y: 4)
        XCTAssert(sut.intResult == 144, "the result has to be equal to 144" )
    }
    
    
    func testDivisionbyZeroWithThrows() {
        XCTAssertThrowsError(try sut.division(x: 4, y: 0), "u has to test the option with error")
    }
    
    func testDivisionNothrow() {
        XCTAssertNoThrow(try sut.division(x: 144, y: 36), "there are should be no erros")
    }
    
    func testDivision() {
        do {
            try sut.division(x: 144, y: 36)
        } catch {
            print("smth goes wrong")
        }
        XCTAssert(sut.doubleResult == 4, "result should be equals to 4")
    }
//    func testDivisionByZero() {
//        let nullparameter: Double = 0
//        try sut.division(x: 4, y: nullparameter)
//        XCTAssertEqual(0, nullparameter, "u can't divide by zer0 ")
//    }
//    func testDivisin() {
//        sut.division(x: 3.14, y: 2)
//        XCTAssert(sut.doubleResult == 1.57, "the result has to be equal to 1.57")
//    }


}
