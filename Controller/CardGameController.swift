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
    fileprivate lazy var clickCount = Int()
    fileprivate lazy var selection = Bool()
    fileprivate lazy var secondarySelection = Bool()
    fileprivate lazy var myGame = StupidGame()
    

    @IBOutlet weak var card1: UIButton!
    @IBOutlet weak var card2: UIButton!
    @IBOutlet weak var card3: UIButton!
    @IBOutlet weak var card4: UIButton!
    @IBOutlet weak var card5: UIButton!
    @IBOutlet weak var card6: UIButton!
    @IBOutlet weak var card7: UIButton!
    @IBOutlet weak var card8: UIButton!
    @IBOutlet weak var card9: UIButton!
    @IBOutlet weak var card10: UIButton!
    @IBOutlet weak var card11: UIButton!
    @IBOutlet weak var card12: UIButton!
    
    
    //@IBOutlet weak var cardButton: UIButton!
    
    override func viewDidLoad() -> Void
    {
        let tempCard = Card()
        print(tempCard.toString)
        selection = false
        secondarySelection = false
        myGame.startGame()
        
    }
    
    @IBAction func checkDeck(sender: UIButton)
    {
        selection = false
        clickCount += 1
        
        if let currentCard = myGame.gameDeck.setCard() as? PlayingCard
        {
            secondarySelection = false
            card1.backgroundColor = UIColor.black
            myGame.setCard()
            switchMatch.setTitle("\(currentCard.getCardData())", for: UIControlState())
            card1.
        }
        else
        {
            card1.setTitle("Deck over.", forState: UIControlState.Normal)
        }
        
        //cardLabel.text = content
    }

}

