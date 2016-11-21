//
//  CardView.swift
//  CardGame
//
//  Created by Morris, Seth on 11/21/16.
//  Copyright © 2016 Morris, Seth. All rights reserved.
//

import UIKit

@IBDesignable class CardView
{
    internal var frontImage : UIImageView
    internal var backImage : UIImageView
    internal var isFaceUp : Bool
    internal var bottomLabel : UILabel
    internal var topLabel : UILabel
    
    init()
    {
        frontImage = UIImageView()
        backImage = UIImageView()
        isFaceUp = Bool()
        bottomLabel = UILabel()
        topLabel = UILabel()
    }
}
