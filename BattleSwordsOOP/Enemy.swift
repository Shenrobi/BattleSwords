//
//  Enemy.swift
//  BattleSwordsOOP
//
//  Created by Terrell Robinson on 9/29/16.
//  Copyright © 2016 FlyGoody. All rights reserved.
//

import Foundation

class Enemy: Character {
    var loot: [String] {
        return ["Rusty Dagger", "Cracked Buckler"]
    }
    
    var enemyType: String {
        return "Grunt"
    }
    
    func dropLoot() -> String? {
        
        if !isAlive {
            let randomItem = Int(arc4random_uniform(UInt32(loot.count)))
            return loot[randomItem]
        }
        return nil
    }
    
    
}
