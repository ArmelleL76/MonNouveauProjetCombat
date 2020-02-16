//
//  Game.swift
//  MonNouveauProjetCombat
//
//  Created by macmini-Armelle on 10/02/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation
class Game {
    var player1: Player
    var player2: Player
    let viking1 : Warrior
    let gladiator1 : Warrior
    let knight1 : Warrior
    let viking2 : Warrior
    let gladiator2 : Warrior
    let knight2 : Warrior
    init() {
        viking1 =  Warrior(life: 100, name: "", weapon: Ax())
        gladiator1 = Warrior(life: 80, name: "", weapon: BroadSword())
        knight1 = Warrior(life: 110, name: "", weapon: Sword())
        viking2 = Warrior(life: 100, name: "", weapon: Ax())
        gladiator2 = Warrior(life: 80, name: "", weapon: BroadSword())
        knight2 = Warrior(life: 110, name: "", weapon: Sword())
        player1 = Player()
        player2 = Player()
    }
    
    
    // 1. Creer les equipes
    
    
    
  func playerWhoPlay(round: Int) -> Player {
      if round % 2 == 0 {
          return player1
      } else {
          return player2
      }
  }
  
  func playerWhoDontPlay(round: Int) -> Player {
      if round % 2 == 1 {
          return player1
      } else {
          return player2
      }
  }
    
}
