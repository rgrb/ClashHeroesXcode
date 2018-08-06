//
//  Stick.swift
//  ClashHeroesXcode
//
//  Created by macmini on 27/07/2018.
//  Copyright © 2018 macmini. All rights reserved.
//

class Stick: Weapon{
    override init() {
        super.init()
        basicdamage = 10
        actionType = .heal
        damage = damagemultiplier(damage: basicdamage, level: level)
        level = 1
        name = "Bâton"
        printForAction = "Choisi le personnage que tu va soigné"
    }
}
