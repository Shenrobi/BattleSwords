//
//  Character.swift
//  BattleSwordsOOP
//
//  Created by Terrell Robinson on 9/29/16.
//  Copyright © 2016 FlyGoody. All rights reserved.
//

import Foundation

class Character {
    
    private var _hp: Int = 100
    private var _attackPower: Int = 10
    
    var hp: Int {
        get {
            return _hp
        }
    }
    
    var attackPower: Int {
        return _attackPower
    }
    
    var isAlive: Bool {
        get {
            if hp <= 0 {
                return false
            } else {
                return true
            }
        }
    }
    
    init(startingHp: Int, attackPower: Int) {
        self._hp = startingHp
        self._attackPower = attackPower
    }
    
    func attackAttempt(attackPower: Int) -> Bool {
        self._hp -= attackPower
        
        return true
    }

    
}
