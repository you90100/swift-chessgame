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
    var point: Point
    
    init(team: Team, index: Int) {
        self.team = team
        
        switch team {
        case .black:
            self.point = index == 0 ? Point(x: 0, y: 0) : Point(x: 7, y: 0) 
        case.white:
            self.point = index == 0 ? Point(x: 7, y: 7) : Point(x: 0, y: 7)
        }
    }  
}
