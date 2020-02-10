//
//  Warrior.swift
//  MonNouveauProjetCombat
//
//  Created by macmini-Armelle on 10/02/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation
class Warrior {
    var life : Int
    var name : String
    var weapon : Weapon
    
    init(life : Int, name : String, weapon : Weapon){
    self.life = life
    self.name = name
    self.weapon = weapon
}
    
    func actionOn (fighter : Warrior) {
        fighter.life -= self.weapon.damage
        
    }
    
    func printCaracteristic(){
        if life > 0 {
            print("\(name) is alive, Life : \(life)")
        }
        else {
            print("\(name) is dead")
        }
    }
}
