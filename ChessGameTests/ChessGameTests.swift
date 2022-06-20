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

    func testPawn_initaliPosition() throws {
        let board = Board()
        board.reset()
        
        let row1 = board.pieces[1]
        let row7 = board.pieces[7]
        
        row1.forEach { piece in
            XCTAssertEqual(piece?.team, .black)
            XCTAssertEqual(piece?.type, .pawn)
        }
        
        row7.forEach { piece in
            XCTAssertEqual(piece?.team, .white)
            XCTAssertEqual(piece?.type, .pawn)
        }
    }
    
    func testPawn_limitNumber() throws {
        let board = Board()
        board.reset()
        
        let pawnCount = board.pieces
            .flatMap { $0 }
            .filter { $0?.type == .pawn }
            .count
        
        XCTAssertEqual(PieceType.pawn.limit, pawnCount / 2)
    }
}
