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
            print("Pseudo: \(item.pseudo)  Classe: \(item.classe.rawValue) / Dommage: \(item.weapon.damage) / Vie:  \(item.life) / Arme: \(item.weapon.name)")
        }
    }
    
    func isAlive() -> Bool{
        for player in players{
            if player.alive == true {
                return true
            }
        }
        return false
    }
    
    
    func characterindex(pseudocharacter: String) -> Player?{
        for player in players{
            if player.pseudo == pseudocharacter { return player }
        }
        return nil
    }
    
    func chooseplayer(string: String) -> Player{
        print(string)
        describe()
        let choice = readLine()!
        if let player = characterindex(pseudocharacter: choice){
            print("Choix / pseudo: \(choice) / Vie: \(player.life) / Dommage: \(player.weapon.damage)")
            return player
        }else{
            return chooseplayer(string: "Mauvais pseudo")
        }
    }
    
    
}
