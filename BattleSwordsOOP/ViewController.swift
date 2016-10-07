//
//  ViewController.swift
//  BattleSwordsOOP
//
//  Created by Terrell Robinson on 9/29/16.
//  Copyright © 2016 FlyGoody. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var printLabel: UILabel!
    @IBOutlet weak var playerHpLabel: UILabel!
    @IBOutlet weak var enemyHpLabel: UILabel!
    @IBOutlet weak var enemyImage: UIImageView!
    @IBOutlet weak var chestButton: UIButton!
    
    var player: Player!
    var enemy: Enemy!
    var treasureChestMessage: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        player = Player(name: "VengefulKnight", hp: 110, attackPower: 20)
        generateRandomEnemy()
        playerHpLabel.text = "\(player.hp) HP"
        
    }
    
    func generateRandomEnemy() {
        let rand = Int(arc4random_uniform(2))
        
        if rand == 0 {
            enemy = Orc(startingHp: 50, attackPower: 12)
        } else {
            enemy = DevilWizard(startingHp: 60, attackPower: 15)
        }
        enemyImage.isHidden = false
    }

    @IBAction func onChestTapped(_ sender: AnyObject) {
        chestButton.isHidden = true
        printLabel.text = treasureChestMessage
        Timer.scheduledTimer(timeInterval: 2.0, target: self, selector: #selector(ViewController.generateRandomEnemy), userInfo: nil, repeats: false)
    }

    @IBAction func attackTapped(_ sender: AnyObject) {
        
        if enemy.attackAttempt(attackPower: player.attackPower) {
            printLabel.text = "Attacked \(enemy.enemyType) for \(player.attackPower) HP"
            enemyHpLabel.text = "\(enemy.hp) HP"
        } else {
            printLabel.text = "Attack was unsuccessful"
        }
        
        if let loot = enemy.dropLoot() {
            player.addItemToInventory(item: loot)
            treasureChestMessage = "\(player.name) found \(loot)!"
            chestButton.isHidden = false
        }
        
        if !enemy.isAlive {
            enemyHpLabel.text = ""
            printLabel.text = "You Killed \(enemy.enemyType)!"
            enemyImage.isHidden = true
        }
    }
    

}

