//
//  GameStateController.swift
//  Project_1
//
//  Created by Abdullah Alsayari on 9/27/18.
//  Copyright © 2018 Abdullah Alsayari. All rights reserved.
//

class GameStateController {
    
    private static var gameBoard = [3, 3, 3, 3, 3, 3, 3, 3, 3]
    private static let playerX: Int = 1
    private static let playerO: Int = 2
    private static let winingindecies = [ [0,1,2],[0,4,8], [2,4,6], [3,4,5], [6,7,8], [0,3,6], [1,4,7], [2,5,8] ]
    
    var stateModel = GameStateModel(winingPostions: winingindecies ,board: gameBoard, xPlayer: playerX, oPlayer: playerO, gameEnded: false)
        
    func Won(player: Int) -> Bool {
        // checking if the cells in the first row are all equal to the player symbol
        // the first index accesses one of the 8 arrays in the wining indecies array, the second one access the element within that array
        
        if stateModel.board[ stateModel.winingPostions[0][0] ] == stateModel.board[ stateModel.winingPostions[0][1] ]
            &&
            stateModel.board[ stateModel.winingPostions[0][0] ] ==
            stateModel.board[ stateModel.winingPostions[0][2] ]
            &&
            stateModel.board[ stateModel.winingPostions[0][0] ] == player
        {
            return true
        }
        else if stateModel.board[ stateModel.winingPostions[1][0] ] == stateModel.board[ stateModel.winingPostions[1][1] ]
        &&
        stateModel.board[ stateModel.winingPostions[1][0] ] ==
        stateModel.board[ stateModel.winingPostions[1][2] ]
        &&
        stateModel.board[ stateModel.winingPostions[1][0] ] == player
        {
            return true
        }
        else if stateModel.board[ stateModel.winingPostions[2][0] ] == stateModel.board[ stateModel.winingPostions[2][1] ]
            &&
            stateModel.board[ stateModel.winingPostions[2][0] ] ==
            stateModel.board[ stateModel.winingPostions[2][2] ]
            &&
            stateModel.board[ stateModel.winingPostions[2][0] ] == player
        {
            return true
        }
        else if stateModel.board[ stateModel.winingPostions[3][0] ] == stateModel.board[ stateModel.winingPostions[3][1] ]
            &&
            stateModel.board[ stateModel.winingPostions[3][0] ] ==
            stateModel.board[ stateModel.winingPostions[3][2] ]
            &&
            stateModel.board[ stateModel.winingPostions[3][0] ] == player
        {
            return true
        }
        else if stateModel.board[ stateModel.winingPostions[4][0] ] == stateModel.board[ stateModel.winingPostions[4][1] ]
            &&
            stateModel.board[ stateModel.winingPostions[4][0] ] ==
            stateModel.board[ stateModel.winingPostions[4][2] ]
            &&
            stateModel.board[ stateModel.winingPostions[4][0] ] == player
        {
            return true
        }
        else if stateModel.board[ stateModel.winingPostions[5][0] ] == stateModel.board[ stateModel.winingPostions[5][1] ]
            &&
            stateModel.board[ stateModel.winingPostions[5][0] ] ==
            stateModel.board[ stateModel.winingPostions[5][2] ]
            &&
            stateModel.board[ stateModel.winingPostions[5][0] ] == player
        {
            return true
        }
        else if stateModel.board[ stateModel.winingPostions[6][0] ] == stateModel.board[ stateModel.winingPostions[6][1] ]
            &&
            stateModel.board[ stateModel.winingPostions[6][0] ] ==
            stateModel.board[ stateModel.winingPostions[6][2] ]
            &&
            stateModel.board[ stateModel.winingPostions[6][0] ] == player
        {
            return true
        }
        else if stateModel.board[ stateModel.winingPostions[7][0] ] == stateModel.board[ stateModel.winingPostions[7][1] ]
            &&
            stateModel.board[ stateModel.winingPostions[7][0] ] ==
            stateModel.board[ stateModel.winingPostions[7][2] ]
            &&
            stateModel.board[ stateModel.winingPostions[7][0] ] == player
        {
            return true
        }
        else {
            return false
        }
    }
    
// checks if the cell is already used by a player
    func isCellEmpty(Cell : Int) -> Bool{
        if stateModel.board[Cell] == 3{
            return true
        }
        else{
            return false
        }
    }
    
    
// a method for placing a move in the board
    func placeMove(player: Int, cell: Int){
        if isCellEmpty(Cell: cell){
            stateModel.board[cell] = player
//            return true
        }
        else{
//            return false
        }
    }
    
    
    
//    var model: GameStateModel
    
    
}
