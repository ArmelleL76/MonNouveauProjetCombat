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
    var nameFighter1 = [String]()
    var nameFighter2 = [String]()
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
    func createTeam1()-> [Warrior]{
        player1.team1.append(viking1)
        player1.team1.append(gladiator1)
        player1.team1.append(knight1)
        return player1.team1
    }
    func createTeam2()-> [Warrior]{
         player2.team2.append(viking2)
               player2.team2.append(gladiator2)
               player2.team2.append(knight2)
        return player2.team2
    }
    func collectNameFighterTeam1()->[String]
    {
         print("\nFirst Player give a name to your fighters in this order : viking, gladiator, knight,  and do return after each name\n")
         for _ in 0...2{
         
         if let name = readLine(){ print("\nWelcome and good luck for fighting : \(name)\n")
          nameFighter1.append(name)}
         }
        viking1.name = nameFighter1[0]
        gladiator1.name = nameFighter1[1]
        knight1.name = nameFighter1[2]
         return nameFighter1
     
         }
      
      func collectNameFighterTeam2()->[String]
      {
            print("\nSecond Player give a name to your fighters in this order : viking, gladiator, knight,  and do return after each name\n")
            for _ in 0...2{
            
            if let name = readLine(){ print("\nWelcome and good luck for fighting : \(name)\n")
              nameFighter2.append(name)}
            }
            viking2.name = nameFighter2[0]
            gladiator2.name = nameFighter2[1]
            knight2.name = nameFighter2[2]
            return nameFighter2
        
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
        let namePlayer1  = player1.collectNamePlayer1()
        let namePlayer2 = player2.collectNamePlayer2()
        nameFighter1 = collectNameFighterTeam1()
        nameFighter2 = collectNameFighterTeam2()
        viking1.name = nameFighter1[0]
        gladiator1.name = nameFighter1[1]
        knight1.name = nameFighter1[2]
        viking2.name = nameFighter2[0]
        gladiator2.name = nameFighter2[1]
        knight2.name = nameFighter2[2]
      print("TEAM1 :    \(namePlayer1)")
        print("Viking1 :  \(viking1.name)    Life : \(viking1.life)    weapon : \(viking1.weapon.name)\n")
        print("Gladiator1 :  \(gladiator1.name)    Life : \(gladiator1.life)    weapon : \(gladiator1.weapon.name)\n")
        print("Knight1 :  \(knight1.name)    Life : \(knight1.life)    weapon : \(knight1.weapon.name)\n")
    print("TEAM2 :    \(namePlayer2)")
        print("Viking2 :  \(viking2.name)    Life : \(viking2.life)    weapon : \(viking2.weapon.name)\n")
        print("Gladiator2 :  \(gladiator2.name)    Life : \(gladiator2.life)    weapon : \(gladiator2.weapon.name)\n")
        print("Knight2 :  \(knight2.name)    Life : \(knight2.life)    weapon : \(knight2.weapon.name)\n")
    }
    
   


     

    
    func battle(){
   //initialiser les équipes, les remplir, il me faut les vies 
        let team1 = createTeam1()
        let team2 = createTeam2()
        print(team1.count)
        print(team2.count)
       // round = 0
        //while team1.count >0 && team2.count > 0
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
