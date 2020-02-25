//
//  Player.swift
//  MonNouveauProjetCombat
//
//  Created by macmini-Armelle on 24/02/2020.
//  Copyright © 2020 armellelecerf. All rights reserved.
//

import Foundation
class Player {
    var name = [String]()
    var teamPlayer1: [Warrior]
    var teamPlayer2: [Warrior]
   var viking1 : Warrior
     var gladiator1 : Warrior
     var knight1 : Warrior
     var viking2 : Warrior
      var gladiator2 : Warrior
      var knight2 : Warrior
    var warriorsNamesTeam1 = [String]()
    var warriorNamesTeam2 = [String]()
    var nameFighter1 = [String]()
    var nameFighter2 = [String]()
    init() {
    viking1 =  Warrior(life: 100, name: "", weapon: Ax())
    gladiator1 = Warrior(life: 80, name: "", weapon: BroadSword())
    knight1 = Warrior(life: 110, name: "", weapon: Sword())
    viking2 = Warrior(life: 100, name: "", weapon: Ax())
    gladiator2 = Warrior(life: 80, name: "", weapon: BroadSword())
    knight2 = Warrior(life: 110, name: "", weapon: Sword())
    teamPlayer1 = [viking1, gladiator1, knight1]
    teamPlayer2 = [viking2, gladiator2, knight2]
       
   
    }
   
    // Players give their names
       func collectNamePlayer1()->String{
          var namePlayer1 = ""
          print("\nFirst Player give your Name and do return\n\n")
           
        if  let name1 = readLine(){print("\nWelcome and good game: \(name1)\n")
            namePlayer1 = name1
        }
        
        return namePlayer1
    }
    
       func collectNamePlayer2()->String{
       var namePlayer2 = ""
        print("\nSecond Player give your Name and do return\n\n")
         
         if  let name2 = readLine(){print("\nWelcome and good game: \(name2)\n")
            namePlayer2 = name2
           }
        return namePlayer2
    }
    
    func display(){
           let namePlayer1  = collectNamePlayer1()
           let namePlayer2 = collectNamePlayer2()
        name.append(namePlayer1)
        name.append(namePlayer2)
       // nameFighter1 = collectNameFighterTeam1()
       // nameFighter2 = collectNameFighterTeam2()
       
         print("Les équipes sont les suivantes : \n\n")
         print("TEAM1 :    \(name[0])\n")
           print("Viking1 ---  Life : \(viking1.life)    weapon : \(viking1.weapon.name)\n")
           print("Gladiator1 ---  Life : \(gladiator1.life)    weapon : \(gladiator1.weapon.name)\n")
           print("Knight1 ---  Life : \(knight1.life)    weapon : \(knight1.weapon.name)\n")
       print("TEAM2 :    \(name[1])\n")
           print("Viking2 ---  Life : \(viking2.life)    weapon : \(viking2.weapon.name)\n")
           print("Gladiator2 ---  Life : \(gladiator2.life)    weapon : \(gladiator2.weapon.name)\n")
           print("Knight2 ---  Life : \(knight2.life)    weapon : \(knight2.weapon.name)\n")
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
                return [viking1.name, gladiator1.name, knight1.name]
              
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
                      return [viking2.name, gladiator2.name, knight2.name]
                 
                     }
       // 1. Creer les equipes
        
    func createTeam1()-> [Warrior]{
        viking1 =  Warrior(life: 100, name: "nemefighter1[0]", weapon: Ax())
        gladiator1 = Warrior(life: 80, name: "nameFighter1[1]", weapon: BroadSword())
        knight1 = Warrior(life: 110, name: "nameFighter1[2]", weapon: Sword())
        
        return [viking1, gladiator1, knight1]
         }
        
    func createTeam2()-> [Warrior]{
            viking2 = Warrior(life: 100, name: "nameFighter2[0]", weapon: Ax())
            gladiator2 = Warrior(life: 80, name: "nameFighter2[1]", weapon: BroadSword())
            knight2 = Warrior(life: 110, name: "nameFighter2[2]", weapon: Sword())
             return [viking2, gladiator2, knight2]
         }
    
      
    func displayTeam1()-> String{
        
           let name1 : String = collectNamePlayer1()
           var monText = ""
           monText = "   ---  TEAM 1 : ---" + "  PLAYER1 : \(name1)   ---\n\n"
         return monText
    }
        
    func displayTeam2()-> String{
         
            let name2 : String = collectNamePlayer1()
            var monText = ""
        monText += "   ---  TEAM 1 : ---" + "  PLAYER1 : \(name2)   ---\n\n"
       return monText
       }
    
    
    func hasTeamAlive() -> Bool {
   
        if teamPlayer1.count > 0  && teamPlayer2.count > 0 {
         return true
        }
        return false
    }
    
    func selectWarrior1() -> Warrior {
       
        var i = 1
       for warrior in teamPlayer1 {
            print("Fighter \(i)")
            warrior.printCharacteristic()
            i += 1
        }
        print("Enter your choice: ")
        print("1 for viking")
        print("2 for gladiator")
        print("3 for knight")
        
        if  let choice = readLine(){
        let choiceNumber1 = Int(choice)!
            print("Your choice is : \(choiceNumber1)")
           print("test intermédiaire : taille équipe1 : \(teamPlayer1.count)")
        let selectedWarrior = teamPlayer1[choiceNumber1 - 1]
        if selectedWarrior.life > 0 {
            return selectedWarrior
        } else {
            print("You choosed a dead warrior, Please select another one.")
            }
        }
            return selectWarrior1()
        
    }
    func selectWarrior2() -> Warrior {
          
           var i = 1
           for warrior in teamPlayer2 {
              print("Fighter \(i)")
               warrior.printCharacteristic()
               i += 1
            
           }
        print("Enter your choice: ")
        print("1 for viking")
        print("2 for gladiator")
        print("3 for knight")
           
        if let choice = readLine(){
           let choiceNumber = Int(choice)!
            print("your choice is  : \(choiceNumber)")
            print("test intermédiaire : taille équipe2 : \(teamPlayer2.count)")
           let selectedWarrior = teamPlayer2[choiceNumber - 1]
           if selectedWarrior.life > 0 {
            return selectedWarrior
           } else {
            print("You choosed a dead warrior, Please select another one.")
            
            }
            
        }
            return selectWarrior2()
        }
}
