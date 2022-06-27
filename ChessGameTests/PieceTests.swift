//
//  PieceTests.swift
//  ChessGameTests
//
//  Created by celine on 2022/06/28.
//

import XCTest

class PieceTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testPawn_moveablePositions_success() throws {
        let pawn = Pawn(team: .black)
        let from = Pawn.initialPosition(team: .black, index: 0)
        
        let movablePositions = pawn.movablePositions(from: from)
        
        XCTAssertEqual(movablePositions[0], Position(rank: from.rank, file: from.file + 1))
    }
    
    func testPawn_moveablePositions_boundary_black() throws {
        let pawn = Pawn(team: .black)
        let from = Position(rank: 0, file: 7)
        
        let movablePositions = pawn.movablePositions(from: from)
        
        XCTAssertNil(movablePositions.first)
    }
    
    func testPawn_moveablePositions_boundary_white() throws {
        let pawn = Pawn(team: .white)
        let from = Position(rank: 0, file: 0)
        
        let movablePositions = pawn.movablePositions(from: from)
        
        XCTAssertNil(movablePositions.first)
    }
}
