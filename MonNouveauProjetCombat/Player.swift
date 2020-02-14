//
//  Player.swift
//  MonNouveauProjetCombat
//
//  Created by macmini-Armelle on 10/02/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation
class Player {
    var team1: [Warrior]
    var team2: [Warrior]
    
    init() {
        team1 = []
        team2 = []
        
        
    }
   
    
    
    
    func hasTeamAlive() -> Bool {
   
        if team1.count > 0 && team2.count > 0 {
         return true
        }
        return false
    }
    
    func selectWarrior() -> Warrior {
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
        if selectedWarrior.lifePoint > 0 {
            return selectedWarrior
        } else {
            print("You choosed a dead warrior, Please select again.")
            return selectWarrior()
        }
    }
}
