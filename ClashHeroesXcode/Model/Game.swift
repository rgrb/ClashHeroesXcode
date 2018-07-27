//
//  Game.swift
//  ClashHeroesXcode
//
//  Created by macmini on 19/07/2018.
//  Copyright © 2018 macmini. All rights reserved.
//

class Game{
    let name: String
    init(name: String){
        self.name = name
    }
    
    var redTeam: Team = Team.init(name: "Red")
    var blueTeam: Team = Team.init(name: "Blue")
    
    func prinTeam(){
        redTeam.describe()
        blueTeam.describe()
    }
    
    func definevictimteam(teamAttacker: Team) -> Team{
        if teamAttacker.name == "Blue" { return redTeam}
        else { return blueTeam}
    }
    
    func chooseClass() -> CharacterType {
        if let choiceClass = readLine(),
            let characterType = CharacterType.init(rawValue: choiceClass){
            return characterType
        }else{
            print("Choisie un nom de classe valide")
            return chooseClass()
        }
    }
    
    func choosePseudo() -> String {
        print("Choisis un pseudonyme unique:")
        if let choicePseudo = readLine(), redTeam.characterindex(pseudocharacter: choicePseudo) == nil, blueTeam.characterindex(pseudocharacter: choicePseudo) == nil {
            return choicePseudo
        }else{
            print("Choisie un pseudonyme unique!")
            return choosePseudo()
        }
    }
    
    func selectPlayer() -> Player{
        let classe: CharacterType = chooseClass()
        let pseudo: String = choosePseudo()
        
        let unPlayer = Player()
        unPlayer.classe = classe
        unPlayer.pseudo = pseudo
        return unPlayer
    }
    
    func playerInit(team: Team, desc: String){
        print(desc)
        let player = selectPlayer()
        team.players.append(player)
        print(player.describe())
    }
    
    func selectYourTeam(){
        print(name)
        for _ in 0..<3{
            playerInit(team: redTeam, desc: "[EQUIPE ROUGE]> Choisie une nouvelle classe")
        }
        for _ in 0..<3{
            playerInit(team: blueTeam, desc: "[EQUIPE BLEU]> Choisie une nouvelle classe")
        }
    }
    
    func start(){
        selectYourTeam()
        prinTeam()
        fight(teamAttacker: redTeam, teamVictim: blueTeam)
    }
}

