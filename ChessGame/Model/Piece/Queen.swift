//
//  Queen.swift
//  ChessGame
//
//  Created by celine on 2022/06/27.
//

import Foundation

struct Queen: Pieceable {
    static let maxCount: Int = 1
    
    let score: Int = 9

    var shape: String {
        switch team {
        case .black:
            return "♛"
        case .white:
            return "♕"
        }
    }    
    
    var team: Team    
    
    init(team: Team) {
        self.team = team
    }  
    
    static func initialPosition(team: Team, index: Int) -> Position {
        switch team {
        case .black:
            return Position(rank: 4, file: 0) 
        case.white:
            return Position(rank: 4, file: 7)
        }
    }
    
    /// TODO: 
    func movablePositions(from: Position) -> [Position] {
        return []
    }
}
