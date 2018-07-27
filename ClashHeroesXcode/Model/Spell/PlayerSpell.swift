//
//  PlayerSpell.swift
//  ClashHeroesXcode
//
//  Created by macmini on 25/07/2018.
//  Copyright © 2018 macmini. All rights reserved.
//

class PlayerSpell{
    var name: String
    var desc: String
    init() {
        name = "Spell"
        desc = "description"
    }
    func icon(){
        print("--------------------")
        print("-   \(self.name)   -")
        print("-   description:   -")
        print("-   \(self.desc)   -")
        print("--------------------")
    }
    func SpellEffect(){
        
    }
}
