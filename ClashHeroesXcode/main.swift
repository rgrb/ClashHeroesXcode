//
//  main.swift
//  ClashHeroesXcode
//
//  Created by macmini on 16/06/2018.
//  Copyright © 2018 macmini. All rights reserved.
//

func infoClasse (){
    print("---------------------------------------------------------------------------------")
    print("----- Rentre le nom de la classe que tu souhaite attribué à ton personnage ------")
    print("---------------------------------------------------------------------------------")
    print("---------- Combattant -- Mage -- Colosse -- Nain -- Lutin -----------------------")
    print("- 💥 ----- (💥)10 -- (❤️)10 -- (💥)7 -- (💥)18 -- (🛡)1 -----------------------")
    print("- ♥️ -----   100  --   115   --   150   --   70   --   80  -----------------------")
    print("- 🗡 -----  Epee  --  Baton --  Marteau -- Hache - Bloque de glace --------------")
    print("---------------------------------------------------------------------------------")
}

/// this function call in start() in game class when one team are died
func printdeath(firstTeam: Team, secondTeam: Team){
    if !firstTeam.isAlive(){
        print("⚰ la team \(firstTeam.name) n'as plus de joueur en vie ⚰")
    }else if !secondTeam.isAlive(){
        print("⚰ la team \(secondTeam.name) n'as plus de joueur en vie ⚰")
    }
}



/// this function initialized a new game with custom name.
func rungame(){
    var newGame: Game
    newGame = Game.init(name: "------------------ ⚡️ Nouvelle Partie: HeroesClash ⚡️ ------------------------")
    newGame.start()
}

rungame()


