//
//  PieceType.swift
//  ChessGame
//
//  Created by celine on 2022/06/20.
//

import Foundation

enum PieceType: CaseIterable {
    case pawn
    case bishop
    case knight
    case luke
    case queen
    
    var score: Int {
        switch self {
        case .pawn:
            return 1
        case .bishop:
            return 3
        case .knight:
            return 3
        case .luke:
            return 5
        case .queen:
            return 9
        }
    }
    
    var limit: Int {
        switch self {
        case .pawn:
            return 8
        case .bishop:
            return 2
        case .knight:
            return 2
        case .luke:
            return 2
        case .queen:
            return 1
        }
    }
    
    func shape(team: Team) -> String {
        switch self {
        case .pawn:
            return team == .black ? "♞" : "♙"
        default:
            return "."
        }
    }
    
    func initialPosition(team: Team) -> [Point] {
        switch self {
        case .pawn:
            return team == .black ? (0..<8).map { Point(x: 1, y: $0)} : (0..<8).map { Point(x: 7, y: $0)}
        default:
            return []
        }
    }
}
