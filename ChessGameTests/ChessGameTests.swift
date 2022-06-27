//
//  ChessGameTests.swift
//  ChessGameTests
//
//  Created by celine on 2022/06/20.
//

import XCTest
@testable import ChessGame

class ChessGameTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testBlack_initialPosition() throws {
        let board = Board()
        let section0 = board.pieces[0]
        let section1 = board.pieces[1]
        
        let result0Shapes = ["♜", "♞", "♝", ".", "♛", "♝", "♞", "♜"]
        let result1Shapes = ["♟", "♟", "♟", "♟", "♟", "♟", "♟", "♟"]
        
        section0.enumerated().forEach { 
            XCTAssertEqual($0.element?.shape, result0Shapes[$0.offset])
        }
        
        section1.enumerated().forEach { 
            XCTAssertEqual($0.element?.shape, result1Shapes[$0.offset])
        }
    }
    
    func testWhite_initialPosition() throws {
        let board = Board()
        let section6 = board.pieces[0]
        let section7 = board.pieces[1]
        
        let result0Shapes = ["♖", "♘", "♗", ".", "♕", "♗", "♘", "♖"]
        let result1Shapes = ["♙", "♙", "♙", "♙", "♙", "♙", "♙", "♙"]
        
        section6.enumerated().forEach { 
            XCTAssertEqual($0.element?.shape, result0Shapes[$0.offset])
        }
        
        section7.enumerated().forEach { 
            XCTAssertEqual($0.element?.shape, result1Shapes[$0.offset])
        }
    }

}
