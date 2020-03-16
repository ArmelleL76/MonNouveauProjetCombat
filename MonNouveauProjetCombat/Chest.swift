//
//  Chest.swift
//  MonNouveauProjetCombat
//
//  Created by macmini-Armelle on 10/02/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation
class Chest{
    var randomStrenght : Int
    init(randomStrenght : Int)
    {self.randomStrenght = randomStrenght}
    
    func appear()-> Bool {
        let random = Int.random(in: 1..<7)
        if random % 3 == 0 {
            print("******* A CHEST HAS APPEARED !! ********\n")
            print("The weapons are being exchanged with the randomOne\n")
            return true}
       
        else
        { print("No chest this turn, sorry\n")
            return false }
        
    }
    func armStrenght()->Int{
        let randomInteger = Int.random(in: 22..<35)
        self.randomStrenght = randomInteger
        print("The chest contains a weapon of power : \(randomStrenght)")
        
        return randomInteger
    }
    func exchange()->Int{
        var damage : Int = 10
         damage = self.armStrenght()
    return damage
    
    }
}
