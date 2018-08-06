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
    var spellValue: Int
    init(){
        name = "Spell"
        desc = "description"
        spellValue = 15
    }
    func icon(){
        print("--------------------")
        print("-   \(self.name)   -")
        print("-   description:   -")
        print("-   \(self.desc)   -")
        print("--------------------")
    }
    func SpellEffect(damage: Int){
        
    }
}
