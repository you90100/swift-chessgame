//
//  GameViewController.swift
//  ChessGame
//
//  Created by celine on 2022/06/20.
//

import UIKit

class GameViewController: UIViewController {

    @IBOutlet weak var boardCollectionView: UICollectionView!
    @IBOutlet weak var playButton: UIButton!
    
    let manager = GameManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension GameViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return manager.board.pieces.count
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return manager.board.pieces[section].count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "BoardCell", for: indexPath) as? BoardCollectionViewCell else {
            return UICollectionViewCell()
        }
        
        let piece = manager.board.pieces[indexPath.section][indexPath.row]
        
        cell.label.text = piece?.shape
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width = (self.view.frame.width - 10*7) / 8 
        return CGSize(width: width, height: width)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print("IndexPath : ", indexPath)
    }
}
