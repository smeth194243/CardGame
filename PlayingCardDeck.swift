//
//  PlayingCardDeck.swift
//  CardGame
//
//  Created by Morris, Seth on 10/31/16.
//  Copyright © 2016 Morris, Seth. All rights reserved.
//

import Foundation

class PlayingCardDeck : Deck
{
    override init()
    {
        super.init()
        
        for suit in PlayingCard.validSuits()
        {
            for var rank in 1..<PlayingCard.maxRank()
            {
                let tempCard = PlayingCard(withRank: rank, ofSuit: suit)
                    cards.append(tempCard)
            }
        }
    }
   
    
   func orderDeck() -> Void
   {
    
   }
}
