//
//  ViewController.swift
//  Project_1
//
//  Created by Abdullah Alsayari on 9/27/18.
//  Copyright © 2018 Abdullah Alsayari. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var player: Int = 1 // Xplayer
    var gameOver: Bool = false // a variable to check if the game has ended

    
    
    @IBOutlet weak var upperView: UIView!
    @IBOutlet weak var winnerLabel: UILabel!
    
    @IBOutlet var TTTButtonCollection: [UIButton]!
    
    let TTTxImage = UIImage(named: "TTTx.png")
    let TTToImage = UIImage(named: "TTTo.png")
    
    var state = GameStateController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        winnerLabel.text = NSLocalizedString("winnerLabel", comment: "")
    }

    
    @IBAction func tapped1(){
        print("tapped")
        view.backgroundColor = UIColor.black
    }

    
//    @objc func tappedImage(tapGesture: UITapGestureRecognizer){
//
//        let selectedCell = tapGesture.view as! UIImageView
//        print("image tapped" )
//
//        if(state.isCellEmpty(Cell: selectedCell.tag) ){
//            selectedCell.image = UIImage(named: "TTTx")
//        }
//    }
    
    
    @IBAction func cellSelected(_ sender: UIButton) {
//        print("button that was pressed: ")
//        print(sender.tag)
        if(!gameOver){
            if state.isCellEmpty(Cell: sender.tag) {
                print("the cell is empty")
                print(sender.tag)
                state.placeMove(player: player, cell: sender.tag)
                if player == 1 {
                    sender.setBackgroundImage(#imageLiteral(resourceName: "TTTx"), for:.normal)
                    if state.Won(player: player){
                        gameOver = true
                        print("the game is over")
                        winnerLabel.text = "The winner is the X player"
                        winnerLabel.textColor = UIColor.white
                        upperView.backgroundColor = UIColor.blue
                        
                        
                    }
                    else{
                    player = 2
                    }
                }
                else if player == 2{
                    sender.setBackgroundImage(#imageLiteral(resourceName: "TTTo"), for:.normal)
                    if state.Won(player: player){
                        gameOver = true
                        print("the game is over")
                        winnerLabel.text = "The winner is the O player"
                        winnerLabel.textColor = UIColor.white
                        upperView.backgroundColor = UIColor.blue
//                        for button in TTTButtonCollection{
//                            button.ba
//                        }
                    }
                    else {
                    player = 1
                    }
                }
            }
            if state.Won(player: player){
                gameOver = true
                print("the game is over")
            }
            else{
                print("the cell is not empty!")
                print(sender.tag)
            }
        }
        print("looks like the game is over")
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

