
//
//  CheckTests.swift
//  NameCheckerTests
//
//  Created by Shingo Morishita on 2021/09/03.
//

import XCTest
@testable import NameChecker

class CheckPresenterTests: XCTestCase {
    
    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_checkButtonWasPressed() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let viewModel = CheckViewModel()
        let presenter = CheckPresenterImpl(viewModel: viewModel, wireframe: Wireframe.shared)
        
        viewModel.username = "Test"
        presenter.checkButtonWasPressed()
        
        XCTAssertFalse(viewModel.isCorrect)
        
        viewModel.username = "Admin"
        presenter.checkButtonWasPressed()
        
        XCTAssertTrue(viewModel.isCorrect)
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
