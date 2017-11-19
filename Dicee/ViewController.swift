//
//  ViewController.swift
//  Dicee
//
//  Created by Maria Xina Rae Torres on 13/11/2017.
//  Copyright © 2017 Maria Xina Rae Torres. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    //diceArray holds filenames of images in Assets.xcassets
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        updateDiceImages()
    }
    
    func updateDiceImages(){
        randomDiceIndex1 = Int(arc4random_uniform(6)) // generates number between 0 and x -1 (5 = 6 - 1)
        randomDiceIndex2 = Int(arc4random_uniform(6)) // generates number between 0 and x -1 (5 = 6 - 1)
        //change image of ImageView1
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        //change image of ImageView2
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
    }
    
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        updateDiceImages()
    }
}

