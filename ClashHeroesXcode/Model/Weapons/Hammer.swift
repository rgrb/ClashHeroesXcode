//
//  Hammer.swift
//  ClashHeroesXcode
//
//  Created by macmini on 27/07/2018.
//  Copyright © 2018 macmini. All rights reserved.
//

class Hammer: Weapon {
    override init() {
        super.init()
        basicdamage = 100
        actionType = .attack
        damage = damagemultiplier(damage: basicdamage, level: level)
        level = 1
        name = "Marteau"
        printForAction = "                 🔨 Choisi le personnage que tu va attaqué 🔨"
    }
}
