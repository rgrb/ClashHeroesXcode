//
//  File.swift
//  ClashHeroesXcode
//
//  Created by macmini on 31/07/2018.
//  Copyright © 2018 macmini. All rights reserved.
//

import Foundation

class blueChest: BasicChest {
    override init() {
        super.init()
        table = [0:Hammer(), 1:Sword()]
        randomNumber = Int(arc4random_uniform(2))
        
    }
}
