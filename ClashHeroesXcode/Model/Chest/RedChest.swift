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
        table = [Axe(), Hammer(), Sword(), IceBlock()]
        name = "rouge"
    }
}
