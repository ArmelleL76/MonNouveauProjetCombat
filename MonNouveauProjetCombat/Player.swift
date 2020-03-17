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
        print("Please Player, give your name: \n")
        self.name = readLine()!
        Player.namePlayers.append(self.name)
        while teamPlayer.count < 3 {
            
            print("\nPlease \(name), choose the type of your warrior number \(teamPlayer.count + 1), type 1, 2 or 3 and type return key \n")
            print("choose 1 for Viking (life 100, weapon : Ax)")
            print("choose 2 for gladiator (life: 90  weapon : broadSword)")
            print("choose 3 for knight (life : 110  weapon : Sword)\n")
            
            
            
            if let  choice = readLine(){
                switch choice {
                case "1" : print("\nYou have chosen a Viking\n")
                teamPlayer.append(Viking())
                case "2" : print("\nYou have chosen a Gladiator\n")
                teamPlayer.append(Gladiator())
                case "3" : print("\nYou have chosen a Knight\n")
                teamPlayer.append(Knight())
                    
                default : print("Choose among 1, 2 or 3 please")
                }
                
            }
        }
        print("\nTeam is done:\n")
        display()
        
    }
    
    
    func display(){
        var  index = 1
        
        for warrior in teamPlayer{
            
            print("** Fighter \(index) : \(warrior.warriorType()) --- \(warrior.name) --- Life: \(warrior.life) weapon: \(warrior.weapon.name)\n")
            
            index += 1
        }
        
    }
    
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
        
        var  index = 1
        print("\n\nEnter your choice, who will fight?: \n")
        for warrior in teamPlayer{
            
            print("\(index) : \(warrior.warriorType())  ---  \(warrior.name)\n")
            index += 1}
        if  let choice = readLine(){
            let choiceNumber1 = Int(choice)!
            print("Your choice is : \(choiceNumber1)")
            
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
