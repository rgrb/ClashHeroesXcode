//
//  BlackChest.swift
//  ClashHeroesXcode
//
//  Created by macmini on 31/07/2018.
//  Copyright © 2018 macmini. All rights reserved.
//

import Foundation

class blackChest: BasicChest {
    override init() {
        super.init()
        table = [Axe(), Hammer(), Sword(), FireBall(), IceBlock(), Stick()]
        name = "noir"
    }

}
