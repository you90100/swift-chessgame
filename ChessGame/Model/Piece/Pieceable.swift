//
//  Pieceable.swift
//  ChessGame
//
//  Created by celine on 2022/06/27.
//

import Foundation

protocol Pieceable {
    static var maxCount: Int { get }
    var team: Team { get set }
    var score: Int { get }
    var shape: String { get }
    
    init(team: Team)
    static func initialPosition(team: Team, index: Int) -> Position
    func movablePositions(from: Position) -> [Position]
}
