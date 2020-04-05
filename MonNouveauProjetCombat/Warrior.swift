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
        print("\nGive a name to the fighter: \n")  //give names to fighters
        self.name = readLine()!
        while Warrior.names.contains(self.name) {
            print("That name already exist, please choose a new one:\n") //ask to give another name if the given name already exist
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
    //function which give damage to the opponent
    func actionOn (fighter : Warrior) {
        fighter.receiveDamage(damage: self.weapon.damage)
    }
    //function to calculate received damages
    func receiveDamage(damage : Int){
        self.life = self.life - damage
        //If life turns into negative value, life will be equal to zero
        if self.life < 0
        {
            self.life = 0
        }
    }
    //function to increase power arm of the first fighter
    func increasePowerArm ()
    {
        self.weapon.damage += 25
        
    }
    //function to cure the fighter of player who play
    func cureOneself(){
        self.life +=  20 }
    
    //print state of fighter after an attack
    func printCharacteristic(){
        if life > 0 {
            print("\(name) is still alive, Life : \(life), force : \(weapon.damage)\n\n          ************\n")
        }
        else {
            print("\(name) is dead\n\n       ************\n")
        }
    }
}
