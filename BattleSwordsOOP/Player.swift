//
//  Player.swift
//  BattleSwordsOOP
//
//  Created by Terrell Robinson on 9/29/16.
//  Copyright © 2016 FlyGoody. All rights reserved.
//

import Foundation

class Player: Character {
    private var _name = "Player"
    private var _inventory = [String]()
    
    var name: String {
        get {
            return _name
        }
    }
    
    func addItemToInventory(item: String) {
        _inventory.append(item)
    }
    
    var inventory: [String] {
        return _inventory
    }
    
    convenience init(name: String, hp: Int, attackPower: Int) {
        self.init(startingHp: hp, attackPower: attackPower)
        _name = name
    }
    
}
