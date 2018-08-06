//
//  Warrior.swift
//  ClashHeroesXcode
//
//  Created by macmini on 25/07/2018.
//  Copyright © 2018 macmini. All rights reserved.
//

class Warrior: PlayerClass {
    required init() {
        super.init()
        name = "Combattant" 
        life = 100
        weapon = IceBlock.init()
    }
}
