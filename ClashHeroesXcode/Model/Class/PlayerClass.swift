//
//  Class.swift
//  ClashHeroesXcode
//
//  Created by macmini on 25/07/2018.
//  Copyright © 2018 macmini. All rights reserved.
//

class PlayerClass{
    var name: String
    var life: Int
    var weapon: Weapon
    required init(){
        name = "Basic Class"
        life = 100
        weapon = Axe.init()
    }
}
