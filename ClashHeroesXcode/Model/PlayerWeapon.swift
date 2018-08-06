//
//  Weapon.swift
//  ClashHeroesXcode
//
//  Created by macmini on 19/07/2018.
//  Copyright © 2018 macmini. All rights reserved.
//

import Foundation
enum WeaponActionType{
    case attack
    case heal
}
class Weapon{
    var basicdamage: Int
    var damage: Int
    var level: Int
    var name: String
    var actionType: WeaponActionType
    init(){
        basicdamage = 10
        damage = 10
        level = 1
        name = "Simple arme"
        actionType = .attack /* Utilisé "." au lieu de répété WeaponActionType,"inference de type" */
    }
    func damagemultiplier(damage: Int, level: Int) -> Int{
        let newdamage: Int = (damage * level)
        return newdamage
    }
}








