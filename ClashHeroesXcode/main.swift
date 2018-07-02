//
//  main.swift
//  ClashHeroesXcode
//
//  Created by macmini on 16/06/2018.
//  Copyright © 2018 macmini. All rights reserved.
//


var validChoice: Int

//var pseudo: [String] = []
// lire le chapitre sur les enums
let ifredteam = [1, 3, 5, 7]
let ifblueteam = [2, 4, 3, 8]
enum CharacterType: String {
    case Combattant
    case Mage
    case Lutin
    case Colosse
    case Nain
}

//var team: [CharacterType] = []

class Player {
    var classe: CharacterType = .Combattant
    var pseudo: String = ""
    var life: Int = 0
    var damage: Int = 0
    var weapon: String = ""
    
    init(){
        self.classe = .Combattant
        self.pseudo = "Loko"
        self.life = 0
        self.damage = 0
        self.weapon = "Epee"
        
        func initcharacterstats(){
            switch classe{
            case .Combattant:
                self.life = 100
                self.damage = 10
                self.weapon = "Epee"
            case .Colosse:
                self.life = 100
                self.damage = 10
                self.weapon = "Epee"
            case .Nain:
                self.life = 100
                self.damage = 10
                self.weapon = "Epee"
            case .Mage:
                self.life = 120
                self.damage = 11
                self.weapon = "Epee"
            case .Lutin:
                self.life = 100
                self.damage = 10
                self.weapon = "Epee"
            }
        }
    }
    
    func describe() -> String{
        return "Classe: " + self.classe.rawValue + "/ Pseudonyme: " + self.pseudo
    }
}

var redCharacters: [Player] = []
var blueCharacters: [Player] = []






/* func choisi(compteur: Int, teamname: String, pseudoselect: String) -> Character {
 switch compteur {
 case 0:
 var unCharacter1 = Character()
 //  detectclass(team: teamname) -> (unCharacter1.name, unCharacter1.life, unCharacter1.damage, unCharacter1.weapon)
 print("je note 1")
 case 1:
 print("je note 2")
 case 2:
 print("je note 3")
 case 3:
 print("je note 4")
 case 4:
 print("je note 5")
 case 5:
 print("je note 6")
 default:
 print("je note pas")
 }
 
 } */



// Dans chaque class (exemple: CharacterOne) mettre Choicemypersonnage pour mettre les variable à jour utiliser la fonction, mettre en parametre CharactereOne pour ne pas répété et modifié les variable

// rentre en parametre, verifié si il est valide et retourner le pseudonyme si il est valide
func choosePseudo() -> String {
    if let choicePseudo = readLine() /*, pseudo.contains(choicePseudo) == false*/{
        return choicePseudo
    }else{
        print("Choisie un pseudonyme unique!")
        return choosePseudo()
    }
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

//utiliser contain pour choicepersonnage
func selectPlayer() -> Player{
    let classe: CharacterType = chooseClass()
    let pseudo: String = choosePseudo()
    
    let unPlayer = Player()
    unPlayer.classe = classe
    unPlayer.pseudo = pseudo
    return unPlayer
}

func selectYourTeam(){
    for _ in 0..<3{
        print("[EQUIPE ROUGE]> Choisie une nouvelle classe")
        let player = selectPlayer()
        redCharacters.append(player)
        print(player.describe())
    }
    for _ in 0..<3{
        print("[EQUIPE BLEU]> Choisie une nouvelle classe")
        let player = selectPlayer()
        blueCharacters.append(player)
        print(player.describe())
        
    }
}

func initfight(){
    
}

func attack(){
    
}

func prinTeam(){
    printredteam()
    printblueteam()
}

func printblueteam(){
    print("/////////         //    T E A M      B L E U     //    ////////////////")
    for item in blueCharacters{
        print("Pseudo: " + item.pseudo + " / Classe: " + item.classe.rawValue + " / Dommage: " , item.damage , " / Vie:" ,  item.life , " / Arme: " + item.weapon)
    }
    
}

func printredteam(){
    print("/////////         //    T E A M      R O U G E   //    ////////////////")
    for item in redCharacters{
        print("Pseudo: " + item.pseudo + " / Classe: " + item.classe.rawValue + " / Dommage: " , item.damage , " / Vie:" ,  item.life , " / Arme: " + item.weapon)
    }
}

func characterexist(team: [Player], pseudocharacter: String) -> Bool{
    for item in team{
        if item.pseudo == pseudocharacter{
            return true
        }
        else { return false }
    }
    return true
}

var redorblue = 1
func chooseyourattacker() -> String{
    print("Choisie le personnage que tu va utilisé pour attaqué")
    if ifredteam.contains(redorblue){
        printredteam()
        if let choice = readLine(){
            if characterexist(team: redCharacters, pseudocharacter: choice) == true{
                print("Vous avez choisie pour attaqué: " + choice)
                redorblue += 1
                return choice
            }
        }
    }else{
        printblueteam()
        if let choice = readLine(){
            if characterexist(team: blueCharacters, pseudocharacter: choice) == true{
                print("Vous avez choisie pour attaqué: " + choice)
                redorblue += 1
                return choice
            }
        }
    }
    return "Mauvais pseudo"
}

func chooseyourvictim() -> String{
    print("Choisie le personnage que tu va utilisé pour attaqué")
    if ifredteam.contains(redorblue){
        printredteam()
        if let choice = readLine(){
            if characterexist(team: blueCharacters, pseudocharacter: choice) == true{
                print("Vous avez choisie comme cible: " + choice)
                redorblue += 1
                return choice
            }
        }
    }else{
        printblueteam()
        if let choice = readLine(){
            if characterexist(team: redCharacters, pseudocharacter: choice) == true{
                print("Vous avez choisie comme cible: " + choice)
                redorblue += 1
                return choice
            }
        }
    }
    return "mauvais pseudo"
}

func fight(){
    
}

func main(){
    selectYourTeam()
    prinTeam()
    chooseyourattacker()
}

func infoClasse (){
    print("Rentre le nom de la classe que tu souhaite attribué à ton premier personnage")
    print("----------------------------------------------------------------------------")
    print("------------------ Combattant -- Mage -- Colosse -- Nain -- Lutin ----------")
    print("- Degats ---------     10     --   0  --    9    --  18  --   28  ----------")
    print("- Point de vie ---    100     --  150 --   120   --  70  --   60  ----------")
    print("- Armes ----------    Epee    -- Baton - Marteau -- Hache - Coffre ---------")
    print("----------------------------------------------------------------------------")
}

func debug(){print("Lancement")}

main()
