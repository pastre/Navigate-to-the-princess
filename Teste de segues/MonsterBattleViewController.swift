//
//  MonsterBattleViewController.swift
//  Teste de segues
//
//  Created by Bruno Pastre on 23/04/19.
//  Copyright © 2019 Bruno Pastre. All rights reserved.
//

import UIKit

class MonsterBattleViewController: UIViewController {

    @IBOutlet weak var monsterLabel: UILabel!
    let monsters = [
        "Goblin",
        "Ogro",
        "Wyvern",
        "Elfo",
        "Playground"
    ]
    var monsterLevel: Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(self.goBack), name: NSNotification.Name(rawValue: "dismissBattle"), object: nil)
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("Will appear")
        let playerLevel = Player.instance.level!
        let monsterName = self.monsters.randomElement()
        var maxMonsterLevel = 6
        
        if playerLevel <= 3{
            maxMonsterLevel -= 4
        }
        self.monsterLevel = Int(arc4random_uniform(UInt32(maxMonsterLevel)) + 1)
        self.monsterLabel.text = "Um \(monsterName!) level \(self.monsterLevel!) apareceu!"
    }
    
    
    @objc func goBack(){
        
        self.dismiss(animated: true, completion: {
            NotificationCenter.default.post(name: updatePlayerName, object: nil)
        })
    }
    @IBAction func handleAttack(_ sender: Any) {
        Player.instance.battle(monsterLevel: self.monsterLevel)
    }
    
    @IBAction func handleRunAway(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("Navigated" )
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }

}
