//
//  Game.swift
//  MonNouveauProjetCombat
//
//  Created by macmini-Armelle on 10/02/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation
class Game {
    var player1 : Player
    var player2 : Player
    
    var nameFighter1 = [String]()
    var nameFighter2 = [String]()
    init() {
        
        player1 = Player()
        player2 = Player()
    }
    
    
  
     //Présentation du jeu
    func presentation(){
      
       
       print( "*********Welcome to French Game factory!************\n\nYou will test the ANTIC FIGHT GAME: \n\n")
        
       print("1. Two players choose three fighters to make a warrior's team. We'll have then two teams.Each player choose a fighter in his own team to meet another fighter in the other team.\n\n")
       print("2. Fighters fight together or choose to improve their arms or to gain more lives. Sometimes a chest containing a weapon appears and a player randomly choosen can exchange his fighter's arm with the random one .At the end, the winner is the player with a fighter alive\n\n")
        
       print("3. Here is the list of possible fighters : \n\n******************\n\nTeam1: \n\nViking1, Gladiator1 and Knight1\n\n******************\n\nTeam2:\n\nViking2, Gladiator2 and Knight2\n\n******************\n\n")
        
      print("Here is a suggestion of optionnal names for your warriors :   \nVikings'names : Sigrid, Thor, Bjorn, Odin, Ragnar, Magnum... \nGladiators'names : Lucius, Marcus, Titus, Sextus, Quintus, Servius...\nKnights'names : Gauvain, Arthur, Perceval, Lancelot, Tristan...\n\n")
         }
    
        
    func display(){
    let myPlayer = Player()
        myPlayer.display()
    }
    
    func battle(){
    
    
      nameFighter1 = player1.collectNameFighterTeam1()
      nameFighter2 = player2.collectNameFighterTeam2()
  var round = 0
      
        
        // Definir a qui c'est le tour de jouer
                   player1 = playerWhoPlay(round: round)
                   player2 = playerWhoDontPlay(round: round)
          repeat {
        // Demander au joueur de choisir son personnage
                   let fighter = player1.selectWarrior1()
                   
        // Demander au joueur de choisir un personnage adverse
                   let otherFighter = player2.selectWarrior2()
                   
        // Effectuer l'action du personnage contre le personnage adverse
                fighter.actionOn(fighter: otherFighter)
                   
                   
                   
                   round += 1
       
          } while player1.hasTeamAlive() && player2.hasTeamAlive()
        }
    
   
      //je ferai si viking1.life ==0 team1.remove(at :0)
       
    //tant que les deux  equipes ont un joueur vivant : repeat
    //player1.hasTeamAlive() && player2.hasTeamAlive ???
    //round +=1
   //on calcule quel joueur joue
    //player= playerWhoPlay()
   //on affiche l'état des équipes
      
// le joueur sélectionné choisit un guerrier dans son équipe
  //faire un switch si le joueur sélectionné est le 1
        //il choisit dans l'équipe 1 puis l'équipe2 sinon c'est l'inverse
//player.selectWarrior1()
 
  //le joueur sélectionné choisit un guerrier dans l'autre équipe
        //player.selectWarrior2() ou l'inverse
  //On affiche les deux guerriers qui vont s'affronter
        
   //on lance l'apparition du coffre
   //Si coffre et randomStrenght> à l'arme du guerrier on échange
   //le joueur choisit une action à effectuer
   //l'action est effectuée
        //on affiche les résultats intermédiaires
        //si un guerrier a une vie negative on la met à zero
        //si  un guerrier est mort on le remove de l'équipe
    // on boucle while isAlive is true
        
        
    
  
  func playerWhoPlay(round: Int) -> Player {
      if round % 2 == 0 {
          return player2
      } else {
          return player1
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
