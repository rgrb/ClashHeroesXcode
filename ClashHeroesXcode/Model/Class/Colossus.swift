//
//  Colossus.swift
//  ClashHeroesXcode
//
//  Created by macmini on 25/07/2018.
//  Copyright © 2018 macmini. All rights reserved.
//

class Colossus: PlayerClass {
    required init() {
        super.init()
        name = "Colosse"
        life = 85
        weapon = Hammer.init()
    }
}
