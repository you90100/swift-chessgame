//
//  Knight.swift
//  ChessGame
//
//  Created by celine on 2022/06/27.
//

import Foundation

struct Knight: Pieceable {
    static let maxCount: Int = 2
    
    let score: Int = 3

    var shape: String {
        switch team {
        case .black:
            return "♞"
        case .white:
            return "♘"
        }
    }    
    
    var team: Team    
    var point: Point
    
    init(team: Team, index: Int) {
        self.team = team
        
        switch team {
        case .black:
            self.point = index == 0 ? Point(x: 2, y: 0) : Point(x: 6, y: 0) 
        case.white:
            self.point = index == 0 ? Point(x: 2, y: 7) : Point(x: 6, y: 7)
        }
    }  
}
