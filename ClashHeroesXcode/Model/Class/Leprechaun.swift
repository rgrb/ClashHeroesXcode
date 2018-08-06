//
//  Leprechaun.swift
//  ClashHeroesXcode
//
//  Created by macmini on 25/07/2018.
//  Copyright © 2018 macmini. All rights reserved.
//

class Leprechaun: PlayerClass {
    required init() {
        super.init()
        name = "Lutin"
        life = 110
        weapon = Stick.init()
    }
}
