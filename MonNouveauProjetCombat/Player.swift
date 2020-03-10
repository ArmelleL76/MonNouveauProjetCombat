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
    
    var warriorsNamesTeam1 = [String]()
    var warriorNamesTeam2 = [String]()
    var nameFighter = [String]()
    
    init() {
        
        while teamPlayer.count < 3 {
        
            print("Please Players, choose the type of your warrior number \(teamPlayer.count + 1), type 1, 2 or 3 and type return key ")
            print("choose 1 for Viking (life 100, weapon : Ax)")
            print("choose 2 for gladiator (life: 90  weapon : broadSword)")
            print("choose 3 for knight (life : 110  weapon : Sword)")
            
            
            
            if let  choice = readLine(){
                switch choice {
                case "1" : print("You have chosen a Viking\n")
                teamPlayer.append(Viking())
                case "2" : print("You have chosen a Gladiator\n")
                teamPlayer.append(Gladiator())
                case "3" : print("You have chosen a Knight\n")
                teamPlayer.append(Knight())
                    
                default : print("Choose among 1, 2 or 3 please")
                }
                
            }
        }
        print("Team is done:")
        display()
        
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
        for warrior in teamPlayer{
      var  index = 1
            print("\(warrior.warriorType()) ---\(warrior.name)--- Life: \(warrior.life) weapon: \(warrior.weapon.name)")
        print("Fighter \(index) :" )
            warrior.printCharacteristic()
            index += 1
        }
        
    }
    
    
    
    
//
//
//    func collectNameFighterTeam()->[String]
//    {
//        print("\nFirst Player give a name to your fighters in this order : viking, gladiator, knight,  and do return after each name\n")
//        for _ in 0...2{
//
//            if let name = readLine(){ print("\nWelcome and good luck for fighting : \(name)\n")
//                nameFighter.append(name)}
//        }
//        viking.name = nameFighter[0]
//        gladiator.name = nameFighter[1]
//        knight.name = nameFighter[2]
//        return [viking.name, gladiator.name, knight.name]
//
//    }
//
//
//    // 1. Creer les equipes
//
//    func createTeam1()-> [Warrior]{
//
//
//        return []
//    }
//
//
//
//
//    func displayTeam1()-> String{
//
//        let name1 : String = collectNamePlayer1()
//        var monText = ""
//        monText = "   ---  TEAM 1 : ---" + "  PLAYER1 : \(name1)   ---\n\n"
//        return monText
//    }
//
//    func displayTeam2()-> String{
//
//        let name2 : String = collectNamePlayer1()
//        var monText = ""
//        monText += "   ---  TEAM 2 : ---" + "  PLAYER2 : \(name2)   ---\n\n"
//        return monText
//    }
    
    
    func hasTeamAlive() -> Bool {
        
        if teamPlayer.count > 0   {
            return true
        }
        return false
    }
    
    func selectWarrior() -> Warrior {
        
       display()
        
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
