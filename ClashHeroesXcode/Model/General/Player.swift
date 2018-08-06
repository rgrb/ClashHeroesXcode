//
//  Player.swift
//  ClashHeroesXcode
//
//  Created by macmini on 19/07/2018.
//  Copyright © 2018 macmini. All rights reserved.
//


class Player {
    var classe: PlayerClass
    let pseudo: String
    var alive: Bool = true
    var lapLocked: Int = 0

    init(pseudo: String){
        self.pseudo = pseudo
        classe = Warrior.init()
        alive = true
        lapLocked = 0
    }
    
    /// attack() have three parameter, team attacker, team victim initialized on function fight() in game class, if action it's right this function return true  but if it's wrong his return false
    func attack(playerVictim: Player, teamAttacker: Team, teamVictim: Team) -> Bool{
        if self.alive == false{
            print("Ton personnage n'as plus de point de vie choisis en un autre")
            return false
        }else if playerVictim.alive == false{
            print("Ce personnage n'as plus de point de vie choisis en un autre")
            return false
        }else{
            self.classe.weapon.actionType.execute(victim: playerVictim, weapon: self.classe.weapon)
            if playerVictim.classe.life <= 0{
                playerVictim.alive = false
                print("\(playerVictim.pseudo) de la team \(teamVictim.name) est mort")
            }else{
                printresultdamage(victim: playerVictim)
            }
            return true
        }
    }
    /// describe() it's simple print for describe player
    func describe(){
        print("Vous avez selectionné un personnage de type \(classe.name) / Dommage: \(self.classe.weapon.damage) / Vie: \(self.classe.life)")
    }
    
    /// printresultdamage() print different type of "print" for different type of action, he have one paramater, it's player victim inisilized in function attack()
    func printresultdamage(victim: Player){
        if self.classe.weapon.actionType == .attack {
            print("Le personnage \(victim.pseudo) à subis \(self.classe.weapon.damage) il lui reste \(victim.classe.life) points de vie")
        }else if self.classe.weapon.actionType == .heal {
            print("Le personnage \(self.pseudo) à soigné \(victim.pseudo) de \(self.classe.weapon.damage) il a maintenant \(victim.classe.life) points de vie")
        }else {
            print("Le personnage \(victim.pseudo) est bloqué pendant \(self.classe.weapon.damage) tour(s) vous ne pourrez pas attaqué avec")
        }
    }
    
    
}
