//
//  StupidGame.swift
//  CardGame
//
//  Created by Morris, Seth on 11/11/16.
//  Copyright © 2016 Morris, Seth. All rights reserved.
//

import Foundation

class StupidGame
{
    internal var gameDeck : PlayingCardDeck
    
    internal var gameScore : Int
    internal var showFaceMatching : Void
    internal var setValue : Void
    internal var flipCards : Void
    internal var scrambleCards: Void
    internal var showCard : Void
    
    
    init()
    {
        gameDeck = PlayingCardDeck()
        gameScore = 0
    }
    
    func startGame()
    {
        gameScore = 0
        
        
    }
}
