//
//  PlayingCard.swift
//  CardGame
//
//  Created by Morris, Seth on 10/25/16.
//  Copyright © 2016 Morris, Seth. All rights reserved.
//

import UIKit

class PlayingCard : Card
{
    private var rank : Int
    private var suit : String
    private var color : UIColor
    
    override init()
    {
        rank = 0
        suit = ""
        color = UIColor()
        super.init()
    }
    
    func getRank() -> Int
    {
       return rank
    }
    
    func getSuit() -> String
    {
        return suit
    }
    
    func getColor() -> UIColor
    {
        return UIColor()
    }
    
    func toString() -> String
    {
        let description = "The cards rank is\(rank), it has a suit of \(suit), and it has a color of\(color)"
        return description
    }
    
}
