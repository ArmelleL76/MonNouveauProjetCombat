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
    var team: [Warrior]
   
    
    init() {
        team = []
       
        name = ""
        
    }
   
    
    
    
    func hasTeamAlive() -> Bool {
   
        if team.count > 0  {
         return true
        }
        return false
    }
    
    func selectWarrior() -> Warrior {
        // TODO
        var i = 1
        for warrior in team {
            print("Personnage \(i)")
            warrior.printCharacteristic()
            i += 1
        }
        
        let choice = readLine()
        let choiceNumber = Int(choice!)!
        let selectedWarrior = team[choiceNumber - 1]
        if selectedWarrior.life > 0 {
            return selectedWarrior
        } else {
            print("You choosed a dead warrior, Please select another one.")
            return selectWarrior()
        }
    }
}
