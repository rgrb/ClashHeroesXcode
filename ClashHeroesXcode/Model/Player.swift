//
//  Player.swift
//  ClashHeroesXcode
//
//  Created by macmini on 19/07/2018.
//  Copyright © 2018 macmini. All rights reserved.
//

enum CharacterType: String {
    case Combattant
    case Mage
    case Lutin
    case Colosse
    case Nain
}

class Player {
    var classe: CharacterType = .Combattant
    var team: String = ""
    var pseudo: String = ""
    var life: Int = 0
    var weapon: Weapon
    var alive: Bool = true
    
    init(){
        switch classe{
        case .Combattant:
            self.life = 100
            self.weapon = Sword.init()
        case .Colosse:
            self.life = 100
            self.weapon = Hammer.init()
        case .Nain:
            self.life = 100
            self.weapon = Axe.init()
        case .Mage:
            self.life = 120
            self.weapon = Stick.init()
        case .Lutin:
            self.life = 100
            self.weapon = Stick.init()
        }
    }
        
        func attack(playerVictim: Player, teamAttacker: Team, teamVictim: Team) -> Bool{
            if self.alive == false{
                print("Ce personnage n'as plus de point de vie choisis en un autre")
                return false
            }else if playerVictim.alive == false{
                print("Ce personnage n'as plus de point de vie choisis en un autre")
                return false
            }else{
                playerVictim.life = playerVictim.life - self.weapon.damage
                if playerVictim.life <= 0{
                    playerVictim.alive = false
                    print("\(playerVictim.pseudo) de la team \(playerVictim.team) est mort")
                }else{
                    printresultdamage(victim: playerVictim)
                }
                return true
            }
        }
    
    func describe(){
        print("Vous avez selectionné un personnage de type \(classe.rawValue) / Dommage: \(self.weapon.damage) / Vie: \(self.life)")
    }
    
    func printresultdamage(victim: Player){
        if classe != .Mage {
            print("Le personnage \(victim.pseudo) à subis \(self.weapon.damage) il lui reste \(victim.life) points de vie")
        }else{
            print("Le personnage \(self.pseudo) à soigné \(victim.pseudo) de \(self.weapon.damage) il a maintenant \(victim.life) points de vie")
        }
    }
    
    
}
