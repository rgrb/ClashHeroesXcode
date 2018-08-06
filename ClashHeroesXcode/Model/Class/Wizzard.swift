//
//  Wizzard.swift
//  ClashHeroesXcode
//
//  Created by macmini on 25/07/2018.
//  Copyright © 2018 macmini. All rights reserved.
//

class Wizzard: PlayerClass {
    required init() {
        super.init()
        name = "Mage"
        life = 125
        weapon = Stick.init()
    }
}
