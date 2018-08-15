//
//  errorWep.swift
//  ClashHeroesXcode
//
//  Created by macmini on 07/08/2018.
//  Copyright © 2018 macmini. All rights reserved.
//

import Foundation

class ErrorWep: Weapon{
    override init() {
        super.init()
        basicdamage = 10
        actionType = .heal
        damage = damagemultiplier(damage: basicdamage, level: level)
        level = 1
        name = "Error"
        printForAction = "                 Error"
        icon = changeIcon()
    }
}
