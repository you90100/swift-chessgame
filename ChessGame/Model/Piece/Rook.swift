//
//  Rook.swift
//  ChessGame
//
//  Created by celine on 2022/06/27.
//

import Foundation

struct Rook: Pieceable {
    static let maxCount: Int = 2
    
    let score: Int = 5

    var shape: String {
        switch team {
        case .black:
            return "♜"
        case .white:
            return "♖"
        }
    }    
    
    var team: Team    
    var position: Position
    
    init(team: Team, index: Int) {
        self.team = team
        
        switch team {
        case .black:
            self.position = index == 0 ? Position(rank: 0, file: 0) : Position(rank: 7, file: 0) 
        case.white:
            self.position = index == 0 ? Position(rank: 7, file: 7) : Position(rank: 0, file: 7)
        }
    }  
}
