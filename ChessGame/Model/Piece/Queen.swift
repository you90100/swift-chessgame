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
    var point: Point    
    
    init(team: Team, index: Int = 0) {
        self.team = team
        
        switch team {
        case .black:
            self.point = Point(x: 5, y: 0) 
        case.white:
            self.point = Point(x: 5, y: 7)
        }
    }  
}
