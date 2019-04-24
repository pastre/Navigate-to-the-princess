//
//  MainViewController.swift
//  Teste de segues
//
//  Created by Bruno Pastre on 23/04/19.
//  Copyright © 2019 Bruno Pastre. All rights reserved.
//

import UIKit

let updatePlayerName = NSNotification.Name(rawValue: "updatePlayer")

class MainViewController: UIViewController {
  
    @IBOutlet weak var lvlLabel: UILabel!
    @IBOutlet weak var hpLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(self.updatePlayer), name: updatePlayerName, object: nil)
        self.updatePlayer()
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        print("Navigated")
    }
 

    @objc func updatePlayer(){
        self.lvlLabel.text = "Você está nível \(Player.instance.level!)"
        self.hpLabel.text = "HP: \(Player.instance.hp!)/\(Player.instance.maxHP)"
        
    }
}
