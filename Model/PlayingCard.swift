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
    //private var rank : Int
    //private var rank : UIColor
    internal var suit : String
    internal var color : UIColor
    internal var rank : Int
    
    override init()
    {
        suit = String()
        color = UIColor.greenColor()
        rank = 0
        super.init()
    }
  //------------------------------------------------------------------------------
    init(withRank: Int, ofSuit:String)
    {
        suit = ofSuit
        color = UIColor.greenColor()
        rank = withRank
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
    
    func getCardData() -> String
    {
        return "\(PlayingCard.validRanks() [rank) \(suit)"
    }
    
    override func toString() -> String
    {
        let backStatus : String
        if self.isFacing()
        {
            backStatus = " is face up"
        }
        else
        {
            backStatus = " is face down"
        }
        
        
        let description = "The cards rank is\(rank), it has a suit of \(suit), and it has a color of\(color) and \(backStatus)."
        
        return description
    }
    
    
    //The class modifier makes it so the method is visible without an instance
    //You would call it by ClassName.method()
    //In this case PlayingCard.validRanks()
    
    class func validRanks() -> [String]
    {
        return ["??", "A","2","3","4","5","6","7","8","9","10","J","Q","K",]
    }
    
    class func maxRank () -> Int
    {
        return validRanks().count - 1
    }
    
    class func validSuits() -> [String]
    {
        return ["♦️","♠️","♥️","♣️"]
    }
    
    
}
