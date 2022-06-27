//
//  King.swift
//  ChessGame
//
//  Created by celine on 2022/06/27.
//

import Foundation

struct King: Pieceable {
    static let maxCount: Int = 1
    
    let score: Int = -1

    var shape: String {
        switch team {
        case .black:
            return "."
        case .white:
            return "."
        }
    }    
    
    var team: Team    
    
    init(team: Team) {
        self.team = team
    }
    
    func movablePositions(from: Position) -> [Position] {
        return []
    }
    
    static func initialPosition(team: Team, index: Int) -> Position {
        switch team {
        case .black:
            return Position(rank: 3, file: 0)
        case.white:
            return Position(rank: 3, file: 7)
        }
    }
    
    /*func canMove(to: Position) -> Bool {
        guard to.x >= 0 && to.x < 8, to.y >= 0, to.y < 8 else { return false  }
        guard self.point != to else { return false }
        
        if abs(self.point.x - to.x) > 1 {
            return false
        } else if abs(self.point.y - to.y) > 1 {
            return false
        }
        
        return true
    }*/
}
