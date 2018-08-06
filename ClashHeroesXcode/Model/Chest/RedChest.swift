//
//  RedChest.swift
//  ClashHeroesXcode
//
//  Created by macmini on 31/07/2018.
//  Copyright © 2018 macmini. All rights reserved.
//

import Foundation

class redChest: BasicChest {
    override init() {
        super.init()
        table = [0:Axe(), 1:Hammer(), 2:Sword(), 3:IceBlock()]
        randomNumber = Int(arc4random_uniform(4))
    }
}
