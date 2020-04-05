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
    
    //we call a random function to make the chest appear
    func appear()-> Bool {
        let random = Int.random(in: 1..<7)
        if random % 3 == 0 {
            print("\n\n*********** A CHEST HAS APPEARED !! ************\n\n")
            
            return true}
            
        else
        { print("\nNo chest this turn, sorry\n")
            return false }
        
    }
    //we calculate the randomStrenght of Chest's arm
    func armStrenght()->Int{
        let randomInteger = Int.random(in: 26..<45)
        self.randomStrenght = randomInteger
        print("The chest contains a weapon of power : \(randomStrenght)\n\nThe weapon of fighter1 will be exchanged with the  randomOne\n")
        return randomInteger
    }
    //we create a function to exchange fighter's arm with the random's one
    func exchange()->Int{
        var damage : Int = 10
        damage = self.armStrenght()
        return damage
        
    }
}
