//
//  Dwarf.swift
//  ClashHeroesXcode
//
//  Created by macmini on 25/07/2018.
//  Copyright © 2018 macmini. All rights reserved.
//

class Dwarf: PlayerClass {
    required init() {
        super.init()
        name = "Nain"
        life = 150
        weapon = Hammer.init()
    }
}
