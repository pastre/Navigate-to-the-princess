//
//  HealViewController.swift
//  Teste de segues
//
//  Created by Bruno Pastre on 24/04/19.
//  Copyright © 2019 Bruno Pastre. All rights reserved.
//

import UIKit

class HealViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func handleOk(_ sender: Any) {
        Player.instance.heal()
        self.dismiss(animated: true, completion: {
            NotificationCenter.default.post(name: updatePlayerName, object: nil)
        })
    }
}
