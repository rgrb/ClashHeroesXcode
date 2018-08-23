//
//  Axe.swift
//  ClashHeroesXcode
//
//  Created by macmini on 27/07/2018.
//  Copyright © 2018 macmini. All rights reserved.
//

class Axe: Weapon {
    override init() {
        super.init()
        basicdamage = 18
        actionType = .attack
        damage = damagemultiplier(damage: basicdamage, level: level)
        level = 1
        name = "Hache"
        printForAction = "                 ⛏ Choisi le personnage que tu va attaqué ⛏"
        icon = changeIcon()
    }
}
