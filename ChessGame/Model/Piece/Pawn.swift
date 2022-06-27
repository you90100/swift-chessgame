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
    var position: Position
    
    init(team: Team, index: Int) {
        self.team = team
        
        switch team {
        case .black:
            self.position = Position(rank: index, file: 1)
        case.white:
            self.position = Position(rank: index, file: 6)
        }
    }
    
    func movablePositions(from: Position) -> [Position] {
        var positions: [Position] = []
        
        switch team {
        case .black:
            var to = from
            to.file += 1
            positions.append(to)
        case .white:
            var to = from
            to.file -= 1
            positions.append(to)
        }
        
        return positions
    }

}
