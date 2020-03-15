//
//  Player.swift
//  MonNouveauProjetCombat
//
//  Created by macmini-Armelle on 24/02/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation
class Player {
    var name : String
    var teamPlayer = [Warrior]()
  static var namePlayers : [String] = []
  
   
    
    init() {
       print("Please Player, give your name: ")
       self.name = readLine()!
      Player.namePlayers.append(self.name)
        while teamPlayer.count < 3 {
        
            print("\nPlease \(name), choose the type of your warrior number \(teamPlayer.count + 1), type 1, 2 or 3 and type return key \n")
            print("choose 1 for Viking (life 100, weapon : Ax)")
            print("choose 2 for gladiator (life: 90  weapon : broadSword)")
            print("choose 3 for knight (life : 110  weapon : Sword)\n")
            
            
            
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
        print("\nTeam is done:\n")
        display()
        
    }
    
    // Players give their names
//    func collectNamePlayer1()->String{
//        var namePlayer1 = ""
//        print("\nFirst Player give your Name and do return\n\n")
//
//        if  let name1 = readLine(){print("\nWelcome and good game: \(name1)\n")
//            namePlayer1 = name1
//        }
//
//        return namePlayer1
//    }
//
//    func collectNamePlayer2()->String{
//        var namePlayer2 = ""
//        print("\nSecond Player give your Name and do return\n\n")
//
//        if  let name2 = readLine(){print("\nWelcome and good game: \(name2)\n")
//            namePlayer2 = name2
//        }
//        return namePlayer2
//    }
    
    func display(){
       var  index = 1
       
        for warrior in teamPlayer{
            
            print("Fighter \(index) : \(warrior.warriorType()) ---\(warrior.name)--- Life: \(warrior.life) weapon: \(warrior.weapon.name)\n")
            
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
        for warrior in teamPlayer {
            if warrior.life > 0 {
                return true
            }
        else if warrior.life <= 0 { warrior.life = 0
            }}
        
            return false
    }
    
    
    func selectWarrior() -> Warrior {
        
       //display() à supprimer, imprimait une deuxième fois les caractéristiques
        var  index = 1
        print("Enter your choice, who will fight?: \n")
        for warrior in teamPlayer{
        
        print("\(index) : \(warrior.warriorType()) ---\(warrior.name)\n")
            index += 1}
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
