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
    internal var playerHand : [PlayingCard]
    internal var gameScore : Int
    internal var cardFaceUp: Bool
    
    
    init()
    {
        gameDeck = PlayingCardDeck()
        playerHand = [PlayingCard]()
        gameScore = 0
        cardFaceUp = false
    }
    
    func startGame() -> Void
    {
         gameDeck.shuffleDeck()
        layOutDeck()
    }
    
   fileprivate func layOutDeck() -> Void
    {
        gameScore = 0
        for cardPlace in 0 ..< 4
        {
            playerHand.append((gameDeck.drawCard as? PlayingCard)!)
        }
        
    }
    
    func switchCard() ->Bool
    {
        var tempCard = Card()
        var top = gameDeck.cards.remove(at: 0)
        tempCard = playerHand.remove(at: 0)
        playerHand.insert(top as! PlayingCard, at: 0)
        
    }
    
    func checkMatch() -> Void
    {
        
    }
    
    func playGame() -> Void
    {
        
    }
}
