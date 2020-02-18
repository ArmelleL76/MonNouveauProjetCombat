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
    
    func appear()->String{
        let random = Int.random(in: 1..<7)
        if random % 3 == 0 {
            
            return "A chest has appeared\n"}
       
        else
        {return "No chest this turn, sorry"}
            
    }
    func armStrenght()->Int{
        let randomInteger = Int.random(in: 8..<21)
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
