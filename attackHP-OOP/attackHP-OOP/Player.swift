//
//  Player.swift
//  attackHP-OOP
//
//  Created by Giovanni Gatto on 3/31/16.
//  Copyright © 2016 Giovanni Gatto. All rights reserved.
//

import Foundation


class Player: Character {
    
    
    private var _name = "Player"
    
    
    var name: String {
        get {
            return _name
        }
    }
    
    
    private var _inventory = [String]()
    
    var inventory: [String]{
        return _inventory
    }
    
    convenience init(name: String, hp: Int, attackPower: Int) {
        self.init(startingHp: hp, attackPower: attackPower)
        
        _name = name
    }
    
    
    
}