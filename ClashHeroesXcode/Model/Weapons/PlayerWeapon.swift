//
//  Weapon.swift
//  ClashHeroesXcode
//
//  Created by macmini on 19/07/2018.
//  Copyright © 2018 macmini. All rights reserved.
//

enum WeaponActionType{
    case attack
    case heal
    case laplocker
    
    func execute(victim: Player, weapon: Weapon){
        switch self {
        case .attack:
            victim.classe.life = victim.classe.life - weapon.damage
        case .heal:
            victim.classe.life = victim.classe.life + weapon.damage
        case .laplocker:
            victim.lapLocked = 1
        }
    }
}

class Weapon{
    var basicdamage: Int
    var damage: Int
    var level: Int
    var name: String
    var actionType: WeaponActionType
    var printForAction: String
    init(){
        basicdamage = 10
        damage = 10
        level = 1
        name = "Simple arme"
        actionType = .attack /* Utilisé "." au lieu de répété WeaponActionType,"inference de type" */
        printForAction = "Juste un print"
    }
    func damagemultiplier(damage: Int, level: Int) -> Int{
        let newdamage: Int = (damage * level)
        return newdamage
    }
}








