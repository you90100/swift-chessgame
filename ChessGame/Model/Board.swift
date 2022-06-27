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
    
    private func reset(team: Team) {
        let pieceTypes: [Pieceable.Type] = [Rook.self, Knight.self, Bishop.self, King.self, Queen.self, Pawn.self]
        
        pieceTypes
            .flatMap { type in
                (0..<type.maxCount).map { index -> (Position, Pieceable) in
                    let position = type.initialPosition(team: team, index: index)
                    let piece = type.init(team: team)
                    return (position, piece)
                }
            }.forEach { info in
                pieces[info.0.file][info.0.rank] = info.1
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
