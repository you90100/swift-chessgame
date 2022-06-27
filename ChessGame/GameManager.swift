//
//  GameManager.swift
//  ChessGame
//
//  Created by celine on 2022/06/20.
//

import Foundation

class GameManager {
    var board: Board
    var player1: Player
    var player2: Player
    
    init() {
        board = Board()
        player1 = Player(team: .black, score: 0)
        player2 = Player(team: .white, score: 0)
    }
    
    func reset() {
        board.reset()
    }
    
    func input() {
        // A1 -> convert -> board.move
    }
}
