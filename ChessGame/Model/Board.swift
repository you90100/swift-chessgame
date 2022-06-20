//
//  Board.swift
//  ChessGame
//
//  Created by celine on 2022/06/20.
//

import Foundation

class Board {
    var pieces: [[Pieceable?]] = Array(repeating: Array(repeating: nil, count: 8), count: 8)
    
    init() {
        reset()
    }
    
    func reset() {
        reset(team: .black)
        reset(team: .white)
    }
    
    func reset(team: Team) {
        PieceType.allCases.forEach { type in 
            type.initialPosition(team: team).forEach { point in
                pieces[point.x][point.y] = Piece(type: type, team: team) 
            }
        }
    }
    
    func move() {
        /// TODO: 
    } 
    
    func score() {
        /// TODO: 
    }
    
    func display() {
        /// TODO: 
    }
}
