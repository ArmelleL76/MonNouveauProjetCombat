//
//  Game.swift
//  MonNouveauProjetCombat
//
//  Created by macmini-Armelle on 10/02/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation
class Game {
    //MARK: properties
    var player1 : Player
    var player2 : Player
    private var round = 0
    private var nameFighter1 = [String]()
    private var nameFighter2 = [String]()
    
    //MARK: constructor
    init() {
        print( "*********Welcome to French Game factory!************\n\nYou will test the ANTIC FIGHT GAME: \n\n")   //print the name of the game
        
        print("1. Two players choose three fighters to make a warrior's team. We'll have then two teams.Each player choose a fighter in his own team to meet another fighter in the other team.\n\n") //print the rôle of players
        
        print("2. Fighters fight together or choose to improve their arms or to gain more lives. Sometimes a chest containing a weapon appears and a player randomly choosen can exchange his fighter's arm with the random one .At the end, the winner is the player with a fighter alive.\n\n") // print the actions of warriors
        
        print("3. Here is the list of possible fighters : \n\n******************\n\nTeam1: \n\nthree fighters chosen among  vikings, gladiators and knights\n\n******************\n\nTeam2:\n\nthree fighters chosen among  vikings, gladiators and knights\n\n******************\n\n") //print the type of warriors
        
        print("Here is a suggestion of optionnal names for your warriors :   \nVikings'names : Sigrid, Thor, Bjorn, Odin, Ragnar, Magnum... \n\nGladiators'names : Lucius, Marcus, Titus, Sextus, Quintus, Servius, Magnus...\n\nKnights'names : Gauvain, Arthur, Perceval, Lancelot, Tristan...\n\n*******************\n\n")   //suggest names for antic fighters
        
        player1 = Player()  //create first instance of Player
        player2 = Player()  //create second instance of Player
    }
    
    
    //MARK: methods
    
    
    //Function which pilot the battle
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
                print("What is your choice?\n")
                print("1. fight against and cause damages : choose 1 and do return\n")
                print("2. Increase arm's strenght : choose 2 and do return\n")
                print("3. Cure your fighter : choose 3 and do return\n")
                
                if let choice = readLine(){
                    print("\nYou choosed \(choice)\n")
                    playerChoice = choice
                    switch playerChoice
                    {
                    case "1" : fighter.actionOn(fighter: otherFighter)
                    case "2" : fighter.increasePowerArm()
                    case "3" : fighter.cureOneself()
                    default : print("Choose a number in (1,2,3)\n")
                        
                    }
                }
            } while playerChoice != "1" && playerChoice != "2" && playerChoice != "3"
            
            round += 1
            
            fighter.printCharacteristic()
            otherFighter.printCharacteristic()
            
        } while player1.hasTeamAlive() && player2.hasTeamAlive()
    }
    
    
    private func playerWhoPlay(round: Int) -> Player {
        if round % 2 == 0 {
            return player2
        } else {
            return player1
        }
    }
    
    private func playerWhoDontPlay(round: Int) -> Player {
        if round % 2 == 1 {
            return player2
        } else {
            return player1
        }
    }
    
    func statistics(){
        // We display the winner and the number of rounds
        print("\nBattle finished after \(round) turns\n")
        if player1.hasTeamAlive(){
            print ("Player1 : \(player1.name) is the winner\n")
            
        } else {
            print("The winner is Player2 : \(player2.name) \n")
        }
        //We display lives in the teams
        if round%2 == 0 {
            print("Results for Team2 :\n")
            player2.display()
            print("Results for Team1 :\n")
            player1.display()
        } else {
            print("Results for Team1 :\n")
            player1.display()
            print("Results for Team2 :\n")
            player2.display()
        }
    }
}
