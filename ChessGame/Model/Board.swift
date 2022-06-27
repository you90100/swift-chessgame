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
        let pieceTypes: [Pieceable.Type] = [Rook.self, Knight.self, Bishop.self, King.self, Queen.self, Pawn.self]
        
        pieceTypes
            .flatMap { type in
                (0..<type.maxCount).map { type.init(team: team, index: $0) }
            }.forEach { piece in
                pieces[piece.position.file][piece.position.rank] = piece
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
