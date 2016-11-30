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
        self.gameDeck = PlayingCardDeck()
        //gameScore = 0
        self.hand = [PlayingCard]()
        self.score = 0
    }
    
    func startGame() -> Void
    {
        gameDeck.shuffleDeck()
        
        //layoutDeck()
        //drawCards()
        
    }
    
   private func drawCards() -> Void
    {
       hand.append((gameDeck.drawCard() as? PlayingCard)!)
       hand.append((gameDeck.drawCard() as? PlayingCard)!)
        
    }
    
    func checkMatch() ->Bool
    {
        let hasMatch : Bool
        if(hand[0].rank == hand[1].rank) || (hand[0].suit == hand[1].suit)
        {
            hasMatch = true
        }
        else
        {
            hasMatch = false
        }
        
        return hasMatch
    }
    
    func playMatchGame() -> Void
    {
        if gameDeck.cards.cout > 0
        {
            if checkMatch()
            {
                score += 5
            }
            else
            {
                score -= 2
            }
        }
        hand.removeAll()
        drawCards()
    }
}
