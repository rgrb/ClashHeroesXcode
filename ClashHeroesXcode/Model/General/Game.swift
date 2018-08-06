//
//  Game.swift
//  ClashHeroesXcode
//
//  Created by macmini on 19/07/2018.
//  Copyright © 2018 macmini. All rights reserved.
//

class Game{
    
    let classList = ["Combattant": Warrior.self, "Nain": Dwarf.self, "Mage": Wizzard.self, "Lutin": Leprechaun.self, "Colosse": Colossus.self]
    
    let name: String
    var Lap = 1
    init(name: String){
        self.name = name
    }
    
    var redTeam: Team = Team.init(name: "Red")
    var blueTeam: Team = Team.init(name: "Blue")
    
    func prinTeam(){
        redTeam.describe()
        blueTeam.describe()
    }

    /// definevictimteam() it's simple function with one paramater (team attacker) and define team victim, exemple, if redTeam are attacker, blueTeam are victim, this function return Team type to
    func definevictimteam(teamAttacker: Team) -> Team{
        if teamAttacker.name == "Blue" { return redTeam}
        else { return blueTeam}
    }
   
    /// In chooseClass() player select with specific name, a class if a good name selection function return class to selectPlayer(), if are not good write chooseClasse() are re-launch for new selection.
    func chooseClass() -> PlayerClass {
        if let choiceClass = readLine(), let classe = classList[choiceClass]{
            let newClass: PlayerClass = classe.init()
            return newClass
        }else{
            print("Choisie un nom de classe valide")
            return chooseClass()
        }
    }
    
    /// In this function, player write a pseudo and choosePseudo() verify if he exist already, if it's good and pseudo not exist already, function return the pseudo (String) to selectPlayer() but if he exist choosePseudo() are re-launch for a un new writing.
    func choosePseudo() -> String {
        print("Choisis un pseudonyme unique:")
        if let choicePseudo = readLine(), redTeam.characterindex(pseudocharacter: choicePseudo) == nil, blueTeam.characterindex(pseudocharacter: choicePseudo) == nil {
            return choicePseudo
        }else{
            print("Choisie un pseudonyme unique!")
            return choosePseudo()
        }
    }
    
    /// this function call in Player init, selectPlayer() call to utilisator to choose classe and pseudo with tow other function chooseClass() and choosePseudo()
    func selectPlayer() -> Player{
        let classe: PlayerClass = chooseClass()
        let pseudo: String = choosePseudo()
        
        let unPlayer = Player(pseudo: pseudo)
        unPlayer.classe = classe
        return unPlayer
    }
    
    /// playerInit() call in select your team with tow paramater, one Team (for select a specific classe/pseudo for one specific team) Type and one String ( for describe team)
    func playerInit(team: Team, desc: String){
        print(desc)
        let player = selectPlayer()
        team.players.append(player)
        print(player.describe())
    }
    
    /// selectYourTeam() are launch in start(), selectYourTeam() call other function for classe player slection with tow parameter, one string parameter for disting blue or red team and one Team type for select specific team.
    func selectYourTeam(){
        print(name)
        for _ in 0..<3{
            playerInit(team: redTeam, desc: "[EQUIPE ROUGE]> Choisie une nouvelle classe")
        }
        for _ in 0..<3{
            playerInit(team: blueTeam, desc: "[EQUIPE BLEU]> Choisie une nouvelle classe")
        }
    }
    
    /// fight() are launch in start() with tow parameters teamAttacker: team selected for attack and teamVictim: team selected for die, if the fight it's good and player lost health point or a action sucess the fight continue, but if fight not sucess we re-launch function with same parameter.
    func fight(teamAttacker: Team, teamVictim: Team){
        let victim: Player
        let attacker = teamAttacker.chooseplayer(string: "Choisi un personnage pour attaqué")
        if attacker.lapLocked > 0 {
            print("Ce personnage est bloqué pendant encore \(attacker.lapLocked) tour(s), choisi en un autre")
            fight(teamAttacker: teamAttacker, teamVictim: teamVictim)
        }
        if attacker.classe.weapon.actionType == .heal {
            victim = teamAttacker.chooseplayer(string: attacker.classe.weapon.printForAction)
        }else{
            victim = teamVictim.chooseplayer(string: attacker.classe.weapon.printForAction)
        }
        if attacker.attack(playerVictim: victim, teamAttacker: teamAttacker, teamVictim: teamVictim) == false{
            fight(teamAttacker: teamAttacker, teamVictim: teamVictim)
        }
    }
    
    /// This function launch selectYourTeam() and prinTeam() (for the classe selection, and print selection for every team). start() use a loop for determine if all team are alive to continue fight, when a team die, start() print died team name. In start() we count all fight lap.
    func start(){
        selectYourTeam()
        prinTeam()
        while redTeam.isAlive() && blueTeam.isAlive(){
            fight(teamAttacker: redTeam, teamVictim: blueTeam)
            if redTeam.isAlive() && blueTeam.isAlive(){
            fight(teamAttacker: blueTeam, teamVictim: redTeam)
            }
            Lap = Lap + 1
            redTeam.UnLapLock()
            blueTeam.UnLapLock()
            print("Tour: \(Lap)")
        }
        printdeath(firstTeam: redTeam, secondTeam: blueTeam)
    }
}

