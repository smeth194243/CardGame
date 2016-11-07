//
//  CardGameController.swift
//  CardGame
//
//  Created by Morris, Seth on 10/27/16.
//  Copyright © 2016 Morris, Seth. All rights reserved.
//

import UIKit

class CardGameController : UIViewController
{
    private lazy var clickCount = Int()
    
    @IBOutlet weak var cardLabel: UILabel!
    @IBOutlet weak var cardButton: UIButton!
    
    override func viewDidLoad() -> Void
    {
        let tempCard = Card()
        print(tempCard.toString())
    }
    
    
    @IBAction func cardClick(sender: UIButton)
    {
        let content = "You clicked \(clickCount) times"
        cardLabel.text = content
    }
    
}

