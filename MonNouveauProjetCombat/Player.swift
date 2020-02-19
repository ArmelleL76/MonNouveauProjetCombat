//
//  Player.swift
//  MonNouveauProjetCombat
//
//  Created by macmini-Armelle on 10/02/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation
class Player {
    var name : String
    var team1: [Warrior]
    var team2: [Warrior]
   
    
    init() {
      team1 = []
      team2 = []
        name = ""
        
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
       
       func displayTeam1()-> String{
        
           let name1 : String = collectNamePlayer1()
           var monText = ""
           monText = "   ---  TEAM 1 : ---" + "  PLAYER1 : \(name1)   ---\n\n"
         return monText
    }
        
    func displayTeam2()-> String{
         
            let name2 : String = collectNamePlayer1()
            var monText = ""
        monText += "   ---  TEAM 1 : ---" + "  PLAYER1 : \(name2)   ---\n\n"
       return monText
       }
    
    
    func hasTeamAlive() -> Bool {
   
        if team1.count > 0  && team2.count > 0 {
         return true
        }
        return false
    }
    
    func selectWarrior1() -> Warrior {
        // TODO
        var i = 1
        for warrior in team1 {
            print("Personnage \(i)")
            warrior.printCharacteristic()
            i += 1
        }
        
        let choice = readLine()
        let choiceNumber = Int(choice!)!
        let selectedWarrior = team1[choiceNumber - 1]
        if selectedWarrior.life > 0 {
            return selectedWarrior
        } else {
            print("You choosed a dead warrior, Please select another one.")
            return selectWarrior1()
        }
    }
}
