//
//  PlayerChest.swift
//  ClashHeroesXcode
//
//  Created by macmini on 31/07/2018.
//  Copyright © 2018 macmini. All rights reserved.
//

import Foundation

class BasicChest{
    var table: [Int:Weapon]
    var randomNumber: Int
    var name: String
    init() {
        table = [1:Axe(), 2:Hammer(), 3:Sword()]
        randomNumber = Int(arc4random_uniform(UInt32(3)))
        name = "basic"
    }
    func randomLoot() -> Weapon{
        var loot: Weapon
        loot = table[randomNumber]!
        return loot        
    }
}
