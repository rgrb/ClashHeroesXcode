//
//  Team.swift
//  ClashHeroesXcode
//
//  Created by macmini on 19/07/2018.
//  Copyright © 2018 macmini. All rights reserved.
//

class Team {
    let name: String
    var players: [Player]
    init(name: String){
        self.name = name
        self.players = []
    }
    
    func describe(){
        print("/////////         //    team \(self.name)    //    ////////////////")
        for item in self.players{
            print("Pseudo: \(item.pseudo)  Classe: \(item.classe.name) / Dommage: \(item.classe.weapon.damage) / Vie:  \(item.classe.life) / Arme: \(item.classe.weapon.name)")
        }
    }
    
    /// this function check all player, return true if one player or more are alive, but if all player die return false.
    func isAlive() -> Bool{
        for player in players{
            if player.alive == true {
                return true
            }
        }
        return false
    }
    
    func UnLapLock(){
        for player in players{
            if player.lapLocked == 0{
            }else{
                player.lapLocked = player.lapLocked - 1
                if player.lapLocked == 0 {
                    print("Le personnage \(player.pseudo) peut joué de nouveau, il n'est plus bloqué")
                }
            }
        }
    }
    
    /// characterindex() one parameter string, selected by player in fight() for seek if he exist, if not exist return nil, or it's true return a player
    func characterindex(pseudocharacter: String) -> Player?{
        for player in players{
            if player.pseudo == pseudocharacter { return player }
        }
        return nil
    }
    
    /// function chooseplayer() have one parameter string for different action (selected attacker and selected victim) he is initialized on fight in game class, he is return a player if he exist or return same function with new print "wrong password" for new selection.
    func chooseplayer(string: String) -> Player{
        print(string)
        describe()
        let choice = readLine()!
        if let player = characterindex(pseudocharacter: choice){
            print("Choix:  / pseudo: \(choice) / Vie: \(player.classe.life) / Dommage: \(player.classe.weapon.damage)")
            return player
        }else{
            return chooseplayer(string: "Mauvais pseudo")
        }
    }
}
