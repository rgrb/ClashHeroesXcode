//
//  main.swift
//  ClashHeroesXcode
//
//  Created by macmini on 16/06/2018.
//  Copyright © 2018 macmini. All rights reserved.
//

func infoClasse (){
    print("Rentre le nom de la classe que tu souhaite attribué à ton premier personnage")
    print("----------------------------------------------------------------------------")
    print("------------------ Combattant -- Mage -- Colosse -- Nain -- Lutin ----------")
    print("- Degats ---------     10     --   0  --    9    --  18  --   28  ----------")
    print("- Point de vie ---    100     --  150 --   120   -- 70  --   60  ----------")
    print("- Armes ----------    Epee    -- Baton - Marteau -- Hache - Coffre ---------")
    print("----------------------------------------------------------------------------")
}

func printdeath(teamAttacker: Team, TeamVictim: Team){
    if !teamAttacker.isAlive(){
        print("la team \(teamAttacker.name) n'as plus de joueur en vie")
    }else if !TeamVictim.isAlive(){
        print("la team \(TeamVictim.name) n'as plus de joueur en vie")
    }
}

func fight(teamAttacker: Team, teamVictim: Team){
    if !teamAttacker.isAlive() || !teamVictim.isAlive(){
        printdeath(teamAttacker: teamAttacker, TeamVictim: teamVictim)
        return;
    /* Print a faire, utiliser la class Game aulieu d'utiliser à chaque fois les team l32 / 34, remettre classe = class(crée sa une class par classe de joueur), l31 pas besoin de mettre == true, point d'exclamation avant la ligne pour false */
    }
    let victim: Player
    let attacker = teamAttacker.chooseplayer(string: "Choisi un personnage pour attaqué")
    if !attacker.alive{
        print("Ce joueur n'est pas en vie choisi en un autre!")
        fight(teamAttacker: teamAttacker, teamVictim: teamVictim)
    }
    if attacker.weapon.actionType == .heal {
        victim = teamAttacker.chooseplayer(string: "Choisi le personnage que tu va soigné")
    }else{
    victim = teamVictim.chooseplayer(string: "Choisi le personnage que tu va attaqué")
    }
    if !victim.alive{
        print("Ce joueur n'est pas en vie choisi en un autre!")
        fight(teamAttacker: teamAttacker, teamVictim: teamVictim)
    }
    if attacker.attack(playerVictim: victim, teamAttacker: teamAttacker, teamVictim: teamVictim){
        fight(teamAttacker: teamVictim, teamVictim: teamAttacker)
    }else {
        fight(teamAttacker: teamAttacker, teamVictim: teamVictim)
    }
}


func rungame(){
    var newGame: Game
    newGame = Game.init(name: "////////////////   Nouvelle partie: itermRPG  //////////////////")
    newGame.start()
}

rungame()


