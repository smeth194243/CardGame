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
    private var suit : String
    
    private var color : UIColor
    {
        get
        {
            return self.color
        }
        set(color)
        {
            self.color = color
        }
    }
    
    private var rank : Int
    {
        get
        {
            return self.rank
        }
        set(rank)
        {
            self.rank = rank
        }
    }
    
   
    override init()
    {
        suit = ""
        color = UIColor()
        super.init()
        rank = 0
    }
  //------------------------------------------------------------------------------
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
    
}
