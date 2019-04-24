//
//  Player.swift
//  Teste de segues
//
//  Created by Bruno Pastre on 23/04/19.
//  Copyright © 2019 Bruno Pastre. All rights reserved.
//

import Foundation

class Player{
    
    static let instance = Player()
    let maxHP: Int = 10
    
    var level: Int!
    var hp: Int!
    var battleCount: Int!
    var battles: [Battle]!
    
    private init(){
        self.setupPlayer()
    }
    
    func battle(monsterLevel: Int){
//        let battle = Battle(player: self, monsterLevel: monsterLevel)
//        self.battles.append(battle)
        self.level += 1
        self.hp -= 2
        self.battleCount += 1
    }
    
    func heal(){
        self.hp = self.maxHP
    }
    func setupPlayer(){
        self.level = 1
        self.battleCount = 0
        self.hp = 10
        self.battles = [Battle]()
    }
    
}


class Battle{
    
    var player: Player!
    var monsterLevel: Int!
    
    var playerAlive: Bool?
    var playerWon: Bool?
    
    init(player: Player, monsterLevel: Int){
        self.player = player
        self.monsterLevel = monsterLevel

    }
    
    
    func calcWinningOdds() -> Double{
        let levelDiff = (self.player.level - monsterLevel)/self.player.level
        //        let boost =  // 0.5 < a < 1
        var winningOdds = 0.5
        if levelDiff < 0{
            winningOdds -= (Double(self.player.level - self.monsterLevel) * 0.05)
        }else{
            winningOdds += (Double(self.player.level) * 0.05)
        }
        return winningOdds
    }
    
    func doBattle(){
        let winningOdds = self.calcWinningOdds()
        let random  = Double(Float(arc4random()) / Float(UINT32_MAX))
        if winningOdds >= random{
            self.playerWins()
        }
        self.takeDamage()
    }
    
    func playerWins(){
        playerWon = true
        playerAlive = true
    }
    
    func takeDamage(){
        
    }
    
}
