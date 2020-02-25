//
//  main.swift
//  MonNouveauProjetCombat
//
//  Created by macmini-Armelle on 10/02/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation


let game = Game()

//Présentation et explication du jeu
game.presentation()   // la présentation fonctionne

//On donne des noms..Présentation des équipes avec leurs caractéristiques
game.display()  // la présentation des équipes fonctionne
//game.battle()
game.battle() // tous les joueurs de l'équipe 2 finissent par mourir mais les valeurs de l'équipe1 ne changent pas

//var myPlayer = Player()
//print(myPlayer.knight1)  // imprime monNouveauProjetCombat.Warrior
//print(myPlayer.collectNameFighterTeam1()) //demande les noms des guerriers et imprime la tableau des noms
//print(myPlayer.collectNamePlayer1()) //demande le nom du joueur 1
//print(myPlayer.createTeam1()) //renvoie monnouveauprojetCombat.Warrior trois fois et redemande le nom du joueur1?
//print(myPlayer.displayTeam1())  //fonctionne affiche team et player
//print(myPlayer.hasTeamAlive())   //renvoie false
//print(myPlayer.name)    //renvoie []
//print(myPlayer.nameFighter1[2]) //renvoie la tableau des noms des guerriers team1
//Choix du joueur qui joue
//game.battle()
//print(myPlayer.nameFighter1[2])
