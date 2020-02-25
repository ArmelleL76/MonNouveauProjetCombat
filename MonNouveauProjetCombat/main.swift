//
//  main.swift
//  MonNouveauProjetCombat
//
//  Created by macmini-Armelle on 10/02/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation


let game = Game()


game.presentation()   // la présentation fonctionne

//On donne des noms..Présentation des équipes avec leurs caractéristiques
game.display()  // la présentation des équipes fonctionne

game.battle() // tous les joueurs de l'équipe 2 finissent par mourir mais les valeurs de l'équipe1 ne changent pas, la taille des équipes reste à 3, le test TeamisAlive ne marche donc pas...


