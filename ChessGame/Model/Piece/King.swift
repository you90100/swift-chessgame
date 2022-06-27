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
    var point: Point
    
    init(team: Team, index: Int = 0) {
        self.team = team
        
        switch team {
        case .black:
            self.point = Point(x: 3, y: 0)
        case.white:
            self.point = Point(x: 3, y: 7)
        }
    }
    
    func canMove(to: Point) -> Bool {
        guard to.x >= 0 && to.x < 8, to.y >= 0, to.y < 8 else { return false  }
        guard self.point != to else { return false }
        
        if abs(self.point.x - to.x) > 1 {
            return false
        } else if abs(self.point.y - to.y) > 1 {
            return false
        }
        
        return true
    }
}
