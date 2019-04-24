//
//  DragonBattleViewController.swift
//  Teste de segues
//
//  Created by Bruno Pastre on 24/04/19.
//  Copyright © 2019 Bruno Pastre. All rights reserved.
//

import UIKit

class DragonBattleViewController: UIViewController {

    @IBOutlet weak var battleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.battleButton.isEnabled = Player.instance.level > 4
    }
    
    @IBAction func handleRunAway(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
