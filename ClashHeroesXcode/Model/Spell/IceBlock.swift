//
//  IceBlock.swift
//  ClashHeroesXcode
//
//  Created by macmini on 27/07/2018.
//  Copyright © 2018 macmini. All rights reserved.
//

class IceBlock:  Weapon {
    override init() {
        super.init()
        basicdamage = 1
        actionType = .laplocker
        damage = damagemultiplier(damage: basicdamage, level: level)
        level = 1
        name = "Bloque de glace"
        printForAction = "Choisi le personnage que tu va bloqué pendant deux tours"
    }
}
