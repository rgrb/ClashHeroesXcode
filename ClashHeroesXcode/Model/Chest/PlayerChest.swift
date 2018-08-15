//
//  PlayerChest.swift
//  ClashHeroesXcode
//
//  Created by macmini on 31/07/2018.
//  Copyright © 2018 macmini. All rights reserved.
//

import Foundation

class BasicChest{
    var table: [Weapon?]
    var name: String
    init() {
        table = []
        name = "basic"
    }
    
    func randomNumber() -> Int {
        let countItem = table.count
        return Int(arc4random_uniform(UInt32(countItem)))
    }
    
    func randomLoot() -> Weapon?{
        var loot: Weapon?
        if table.count == 0 {
            return nil
        }
        loot = table[randomNumber()]
        return loot        
    }
}
