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
    var point: Point
    
    init(team: Team, index: Int) {
        self.team = team
        
        switch team {
        case .black:
            self.point = Point(x: 1, y: index)
        case.white:
            self.point = Point(x: 7, y: index)
        }
    }

}
