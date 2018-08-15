//
//  BlankChest.swift
//  ClashHeroesXcode
//
//  Created by macmini on 07/08/2018.
//  Copyright © 2018 macmini. All rights reserved.
//

import Foundation

class blankChest: BasicChest {
    override init() {
        super.init()
        table = [0:ErrorWep()]
        randomNumber = Int(arc4random_uniform(0))
        name = "vide"
    }
}
