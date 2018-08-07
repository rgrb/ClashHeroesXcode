//
//  FireBall.swift
//  ClashHeroesXcode
//
//  Created by macmini on 27/07/2018.
//  Copyright © 2018 macmini. All rights reserved.
//

class FireBall:  Weapon {
    override init() {
        super.init()
        basicdamage = 100
        actionType = .attack
        damage = damagemultiplier(damage: basicdamage, level: level)
        level = 1
        name = "Boule de feu"
        printForAction = "                 🔥 Choisi le personnage que tu va attaqué 🔥"
    }
}
