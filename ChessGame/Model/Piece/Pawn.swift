//
//  Pawn.swift
//  ChessGame
//
//  Created by celine on 2022/06/20.
//

import Foundation

struct Pawn: Pieceable {
    static let maxCount: Int = 8    
    
    let score: Int = 1

    var shape: String {
        switch team {
        case .black:
            return "♟"
        case .white:
            return "♙"
        }
    }    
    
    var team: Team    
    
    init(team: Team) {
        self.team = team
    }
    
    func movablePositions(from: Position) -> [Position] {
        var positions: [Position] = []
        
        switch team {
        case .black:
            var to = from
            to.file += 1
            if isInBoundary(position: to) {
                positions.append(to)
            }
        case .white:
            var to = from
            to.file -= 1
            if isInBoundary(position: to) {
                positions.append(to)
            }
        }
        
        return positions
    }

    static func initialPosition(team: Team, index: Int) -> Position {
        switch team {
        case .black:
            return Position(rank: index, file: 1)
        case.white:
            return Position(rank: index, file: 6)
        }
    }
}
