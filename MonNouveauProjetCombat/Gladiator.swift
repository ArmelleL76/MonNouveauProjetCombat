//
//  Gladiator.swift
//  MonNouveauProjetCombat
//
//  Created by macmini-Armelle on 10/02/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation
class Gladiator : Warrior{
    init( name : String){
        super.init(life : 80, name : name, weapon : BroadSword())
    }
    
}
