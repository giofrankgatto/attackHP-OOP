//
//  ViewController.swift
//  attackHP-OOP
//
//  Created by Giovanni Gatto on 3/31/16.
//  Copyright © 2016 Giovanni Gatto. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var player2HPLabel: UILabel!
    
    @IBOutlet weak var player1HPLabel: UILabel!
    
    @IBOutlet weak var printLabel: UILabel!
    
    @IBOutlet weak var player1AttackButton: UIButton!
    
    @IBOutlet weak var player2AttackButton: UIButton!
    
    var player1: Player!
    var player2: Player!
    
    
    func enableButton() {
        self.player2AttackButton.enabled = false
        self.player1AttackButton.enabled = false
    }
    
    @IBAction func p1AttackPressed(sender: AnyObject) {
        if player2.attemptAttack(player2.attackPower) {
            printLabel.text = "Attacked \(player2.name) for \(player1.attackPower) HP"
            self.enableButton()
            NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: #selector(ViewController.enableButton), userInfo: nil, repeats: false)
        } else {
            printLabel.text = "Attack Unsuccessful!"
        }
        
        
        
    }
    
    
   
    @IBAction func p2AttackPressed(sender: AnyObject) {
        
        if player1.attemptAttack(player1.attackPower) {
            printLabel.text = "Attacked \(player1.name) for \(player2.attackPower) HP"
            self.enableButton()
            NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: #selector(ViewController.enableButton), userInfo: nil, repeats: false)
        } else {
            printLabel.text = "Attacked Unsuccessful!"
        }
        
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player1 = Player(name: "Bad Guy", hp: 100, attackPower: 20)
        player2 = Player(name: "Good Guy", hp: 100, attackPower: 15)
        player1HPLabel.text = "\(player1.hp) HP"
        player2HPLabel.text = "\(player2.hp) HP"
        
        
        
    }

  
    
    
    

}

