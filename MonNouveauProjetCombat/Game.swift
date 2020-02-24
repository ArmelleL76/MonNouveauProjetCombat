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
    
    var nameFighter1 = [String]()
    var nameFighter2 = [String]()
    init() {
        
        player1 = Player()
        player2 = Player()
    }
    
    
  
   
    func presentation()-> String{
        //Présentation du jeu
        var myText : String = ""
        myText = "*********Welcome to French Game factory!************\n\nYou will test the ANTIC FIGHT GAME: \n\n"
        
        myText += "1. Two players choose three fighters to make a warrior's team. We'll have then two teams.Each player choose a fighter in his own team to meet another fighter in the other team.\n\n"
        myText += "2. Fighters fight together or choose to improve their arms or to gain more lives. Sometimes a chest containing a weapon appears and a player randomly choosen can exchange his fighter's arm with the random one .At the end, the winner is the player with a fighter alive\n\n"
        
        myText += "3. Here is the list of possible fighters : \n\n******************\n\nTeam1: \n\nViking1, Gladiator1 and Knight1\n\n******************\n\nTeam2:\n\nViking2, Gladiator2 and Knight2\n\n******************\n\n"
        
        myText += "Here is a suggestion of optionnal names for your warriors :   \nVikings'names : Sigrid, Thor, Bjorn, Odin, Ragnar, Magnum... \nGladiators'names : Lucius, Marcus, Titus, Sextus, Quintus, Servius...\nKnights'names : Gauvain, Arthur, Perceval, Lancelot, Tristan...\n"
        return myText }
    
        
    func display(){
        
    }
    
    func battle(){
   //initialiser les équipes, les remplir, il me faut les vies 
        let team1 = player1.createTeam1()
        let team2 = player2.createTeam2()
        print("Number of fighters alive in TEAM1 : \(team1.count)")
        print("Number of fighters alive in TEAM2 : \(team2.count)")
        for fighter in team1 {print("\(fighter.name)  " + "  \(fighter.life)")}
        for fighter in team2 {print("\(fighter.name)  " + "  \(fighter.life)")}
   // repeat{
        let numberPlayer = playerWhoPlay(round: 2)
        var fighter1 : Warrior
        var otherFighter1 : Warrior
        var fighter2 : Warrior
         var otherFighter2 : Warrior
        switch numberPlayer {
        case 1 :
            print("Here is the player who play : \(self.player1.name[0])")
            fighter1 = self.player1.selectWarrior1()
         print("The first fighter will be \(fighter1.name)")
             print("Choose a second fighter in the other team")
            print("la deuxième équipa a \(team2.count)joueurs vivants")
            
            otherFighter1 = self.player1.selectWarrior2()
            print("\(fighter1.name) will be opposed to \(otherFighter1.name)" )
            
        case 2 : print("Here is the player who play : \(self.player2.name[1])")
        fighter2 = self.player2.selectWarrior2()
            print("The first fighter will be \(fighter2.name)")
            print("Choose a second fighter in the other team")
         print("la deuxième équipa a \(team1.count)joueurs vivants")
        otherFighter2 = self.player2.selectWarrior1()
            print("\(fighter2.name) will be opposed to \(otherFighter2.name)" )
        default : break
        }
       
    
   // }while team1.count > 0 && team2.count > 0
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
        
        
    }
  
  func playerWhoPlay(round: Int) -> Int {
      if round % 2 == 0 {
          return 1
      } else {
          return 2
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
