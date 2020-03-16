//
//  Warrior.swift
//  MonNouveauProjetCombat
//
//  Created by macmini-Armelle on 10/02/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation
class Warrior {
    
    static var names: [String] = []
    
    var life : Int
    var name : String
    var weapon : Weapon
    
    
    init(life : Int, weapon : Weapon){
        self.life = life
        self.weapon = weapon
        print("\nGive a name to the fighter: \n")
        self.name = readLine()!
        while Warrior.names.contains(self.name) {
            print("That name already exist, please choose a new one:")
            self.name = readLine()!
        }
        Warrior.names.append(self.name)
    }
    func warriorType() -> String {
        return "\(self.self)"
            .split(separator: ".")
            .map({ value in
                return String(value)
            })
            .last ?? ""
    }
    
    func actionOn (fighter : Warrior) {
        fighter.receiveDamage(damage: self.weapon.damage)
    }
    
    func receiveDamage(damage : Int){
        self.life = self.life - damage
        //If life turns into negative value, life will be equal to zero
        if self.life < 0
        {
            self.life = 0
        }
    }
    
    func increasePowerArm ()
    {self.weapon.damage += 8}
    
    func cureOneself(){
        self.life +=  10 }
    
    
    func printCharacteristic(){
        if life > 0 {
            print("\(name) is still alive, Life : \(life)\n          ************\n")
        }
        else {
            print("\(name) is dead\n       ************\n")
        }
    }
}
