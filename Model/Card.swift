//
//  Card.swift
//  CardGame
//
//  Created by Morris, Seth on 10/25/16.
//  Copyright © 2016 Morris, Seth. All rights reserved.
//

import UIKit

class Card
{
    private var backImage : UIImage
    private var isFaceUp : Bool
    
    init ()
    {
        backImage = UIImage()
        isFaceUp = false
    }
    
    func getBackImage() -> UIImage
    {
        return backImage
    }
    
    func isFacing() -> Bool
    {
        return isFaceUp
    }
    
    func toString() -> String
    {
        let description = "This card \(isFaceUp)"
        
        return description
    }
}
