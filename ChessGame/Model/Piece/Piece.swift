//
//  Piece.swift
//  ChessGame
//
//  Created by celine on 2022/06/20.
//

import Foundation

protocol Piece {
    var type: PieceType { get set }
    var team: Team { get set }
}
