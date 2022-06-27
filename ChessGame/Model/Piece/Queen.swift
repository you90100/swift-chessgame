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
    var position: Position    
    
    init(team: Team, index: Int = 0) {
        self.team = team
        
        switch team {
        case .black:
            self.position = Position(rank: 4, file: 0) 
        case.white:
            self.position = Position(rank: 4, file: 7)
        }
    }  
}
