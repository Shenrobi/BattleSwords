//
//  Orc.swift
//  BattleSwordsOOP
//
//  Created by Terrell Robinson on 9/29/16.
//  Copyright © 2016 FlyGoody. All rights reserved.
//

import Foundation

class Orc: Enemy {
    
    let IMMUNE_MAX = 15
    
    override var loot: [String] {
        return ["Tough Hide", "Rare Trident", "Orc Blood"]
    }
    
    override var enemyType: String {
        return "Orc"
    }
    
    override func attackAttempt(attackPower: Int) -> Bool {
        if attackPower >= IMMUNE_MAX {
            return super.attackAttempt(attackPower: attackPower)
        } else {
            return false
        }
    }
    
}
