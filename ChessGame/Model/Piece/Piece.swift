//
//  Pawn.swift
//  ChessGame
//
//  Created by celine on 2022/06/20.
//

import Foundation

protocol Pieceable {
    var type: PieceType { get set }
    var team: Team { get set }
}

struct Piece: Pieceable {
    var type: PieceType
    var team: Team
}
