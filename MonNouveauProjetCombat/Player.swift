//
//  Player.swift
//  MonNouveauProjetCombat
//
//  Created by macmini-Armelle on 24/02/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation
class Player {
    var names = [String]()
    var teamPlayer = [Warrior]()
    
    var viking = Viking(name: "")
    var gladiator = Gladiator(name: "")
    var knight = Knight(name: "")
    
    var warriorsNamesTeam1 = [String]()
    var warriorNamesTeam2 = [String]()
    var nameFighter = [String]()
    
    init() {
        let ordinals = ["first", "second", "third"]
        for number in ordinals {
            print("Please choose the type of your \(number)warrior , type 1, 2 or 3 and type return key ")
            print("choose 1 for Viking (life 100, weapon : Ax, )")
            print("choose 2 for gladiator (life: 90  weapon : broadSword    )")
            print("choose 3 for knight (life : 110  weapon : Sword)")
            
            if let  choice = readLine(){
                switch choice {
                case "1" : print("You have chosen a Viking\n")
                teamPlayer.append(self.viking)
                case "2" : print("You have chosen a Gladiator\n")
                teamPlayer.append(self.gladiator)
                case "3" : print("You have chosen a Knight\n")
                teamPlayer.append(self.knight)
                    
                default : print("Choose among 1, 2 or 3 please")
                }
                
            }
        }
        print("\n Player give a name to your fighters in this order : first, second, third,  and do return after each name\n")
        for _ in 0...2{
            
            if let name = readLine(){ print("\nWelcome and good luck for fighting : \(name)\n")
                nameFighter.append(name)
                if nameFighter.count > 1{
                    
                    for i in 0...nameFighter.count-2{
                        if nameFighter[i] == name { print("You have already given this name to a fighter, please, give another ")
                            if let name = readLine(){
                                nameFighter[nameFighter.count-1] = name}
                        }}}}
            
            
            
        }
        
        teamPlayer[0].name = nameFighter[0]
        teamPlayer[1].name = nameFighter[1]
        teamPlayer[2].name = nameFighter[2]
        
    }
    
    // Players give their names
    func collectNamePlayer1()->String{
        var namePlayer1 = ""
        print("\nFirst Player give your Name and do return\n\n")
        
        if  let name1 = readLine(){print("\nWelcome and good game: \(name1)\n")
            namePlayer1 = name1
        }
        
        return namePlayer1
    }
    
    func collectNamePlayer2()->String{
        var namePlayer2 = ""
        print("\nSecond Player give your Name and do return\n\n")
        
        if  let name2 = readLine(){print("\nWelcome and good game: \(name2)\n")
            namePlayer2 = name2
        }
        return namePlayer2
    }
    
    func display(){
        let namePlayer1  = collectNamePlayer1()
        let namePlayer2 = collectNamePlayer2()
        names.append(namePlayer1)
        names.append(namePlayer2)
        // nameFighter1 = collectNameFighterTeam1()
        // nameFighter2 = collectNameFighterTeam2()
        
        print("Les équipes sont les suivantes : \n\n")
        print("TEAM1 :    \(names[0])\n")
        print("Viking ---  Life : \(viking.life)    weapon : \(viking.weapon.name)\n")
        print("Gladiator ---  Life : \(gladiator.life)    weapon : \(gladiator.weapon.name)\n")
        print("Knight ---  Life : \(knight.life)    weapon : \(knight.weapon.name)\n")
        print("Les équipes sont les suivantes : \n\n")
        print("TEAM2 :    \(names[1])\n")
        print("Viking ---  Life : \(viking.life)    weapon : \(viking.weapon.name)\n")
        print("Gladiator ---  Life : \(gladiator.life)    weapon : \(gladiator.weapon.name)\n")
        print("Knight ---  Life : \(knight.life)    weapon : \(knight.weapon.name)\n")
        
    }
    
    
    
    
    
    
    func collectNameFighterTeam()->[String]
    {
        print("\nFirst Player give a name to your fighters in this order : viking, gladiator, knight,  and do return after each name\n")
        for _ in 0...2{
            
            if let name = readLine(){ print("\nWelcome and good luck for fighting : \(name)\n")
                nameFighter.append(name)}
        }
        viking.name = nameFighter[0]
        gladiator.name = nameFighter[1]
        knight.name = nameFighter[2]
        return [viking.name, gladiator.name, knight.name]
        
    }
    
    
    // 1. Creer les equipes
    
    func createTeam1()-> [Warrior]{
        
        
        return []
    }
    
    
    
    
    func displayTeam1()-> String{
        
        let name1 : String = collectNamePlayer1()
        var monText = ""
        monText = "   ---  TEAM 1 : ---" + "  PLAYER1 : \(name1)   ---\n\n"
        return monText
    }
    
    func displayTeam2()-> String{
        
        let name2 : String = collectNamePlayer1()
        var monText = ""
        monText += "   ---  TEAM 2 : ---" + "  PLAYER2 : \(name2)   ---\n\n"
        return monText
    }
    
    
    func hasTeamAlive() -> Bool {
        
        if teamPlayer.count > 0   {
            return true
        }
        return false
    }
    
    func selectWarrior() -> Warrior {
        
        var i = 1
        for warrior in teamPlayer{
            print("Fighter \(i)")
            warrior.printCharacteristic()
            i += 1
        }
        print("Enter your choice: ")
        print("1 for viking")
        print("2 for gladiator")
        print("3 for knight")
        
        if  let choice = readLine(){
            let choiceNumber1 = Int(choice)!
            print("Your choice is : \(choiceNumber1)")
            print("test intermédiaire : taille équipe1 : \(teamPlayer.count)")
            let selectedWarrior = teamPlayer[choiceNumber1 - 1]
            if selectedWarrior.life > 0 {
                return selectedWarrior
            } else {
                print("You choosed a dead warrior, Please select another one.")
            }
        }
        return selectWarrior()
        
    }
    
}
