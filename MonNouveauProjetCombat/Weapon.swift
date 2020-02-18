//
//  Weapon.swift
//  MonNouveauProjetCombat
//
//  Created by macmini-Armelle on 10/02/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation
class Weapon {
    var name : String
    var damage : Int
    init(damage: Int, name : String) {
        self.damage = damage
        self.name = name
    }
}
