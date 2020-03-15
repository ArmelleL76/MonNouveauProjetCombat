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
     var round = 0
    var nameFighter1 = [String]()
    var nameFighter2 = [String]()
    init() {
        print( "*********Welcome to French Game factory!************\n\nYou will test the ANTIC FIGHT GAME: \n\n")
        
        print("1. Two players choose three fighters to make a warrior's team. We'll have then two teams.Each player choose a fighter in his own team to meet another fighter in the other team.\n\n")
        print("2. Fighters fight together or choose to improve their arms or to gain more lives. Sometimes a chest containing a weapon appears and a player randomly choosen can exchange his fighter's arm with the random one .At the end, the winner is the player with a fighter alive\n\n")
        
        print("3. Here is the list of possible fighters : \n\n******************\n\nTeam1: \n\nthree fighters chosen among  viking, gladiator and knight\n\n******************\n\nTeam2:\n\nthree fighters chosen among  viking, gladiator and knight\n\n******************\n\n")
        
        print("Here is a suggestion of optionnal names for your warriors :   \nVikings'names : Sigrid, Thor, Bjorn, Odin, Ragnar, Magnum... \nGladiators'names : Lucius, Marcus, Titus, Sextus, Quintus, Servius, Magnus...\nKnights'names : Gauvain, Arthur, Perceval, Lancelot, Tristan...\n\n*******************\n\n")
        
        player1 = Player()
        player2 = Player()
    }
    
    
    
    
    
    
    func battle(){
        
        
        
        
       
        
        
        
        
        repeat {
            // Definir a qui c'est le tour de jouer
            let player1 = playerWhoPlay(round: round)
            let player2 = playerWhoDontPlay(round: round)
            // Demander au joueur de choisir son personnage
            let fighter = player1.selectWarrior()
            
            // Demander au joueur de choisir un personnage adverse
            let otherFighter = player2.selectWarrior()
            
            //Faire apparaître le coffre
            let chest = Chest(randomStrenght: 10)
            if chest.appear()  {
                fighter.weapon.damage =  chest.exchange()
            }
            // Effectuer l'action du personnage contre le personnage adverse
            
            var playerChoice : String = ""
            repeat{
                print("What is your choice?")
                print("1. fight against and cause damages : choose 1 and do return")
                print("2. Increase arm's strenght : choose 2 and do return")
                print("3. Cure your fighter : choose 3 and do return")
                
                if let choice = readLine(){
                    print("You choosed \(choice)")
                    playerChoice = choice
                    switch playerChoice
                    {
                    case "1" : fighter.actionOn(fighter: otherFighter)
                    case "2" : fighter.increasePowerArm()
                    case "3" : fighter.cureOneself()
                    default : print("Choose a number in (1,2,3)")
                        
                    }
                }
            } while playerChoice != "1" && playerChoice != "2" && playerChoice != "3"
            
            
            round += 1
            
        } while player1.hasTeamAlive() && player2.hasTeamAlive()
    }
    
    
    
    
    
    
    //je ferai si viking1.life ==0 team1.remove(at :0)
    
    
    
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
    
    func statistics(){
    // On affiche le joueur gagnant
        print("Battle finished after \(round) turns")
        if player1.hasTeamAlive(){
            print ("Player1 is the winner")}
        else {print("The winner is player2")
        }
    //We display lives in the teams
        player1.display()
        player2.display()
    }
}
