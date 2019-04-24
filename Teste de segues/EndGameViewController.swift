//
//  EndGameViewController.swift
//  Teste de segues
//
//  Created by Bruno Pastre on 24/04/19.
//  Copyright © 2019 Bruno Pastre. All rights reserved.
//

import UIKit

class EndGameViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func handlePlayAgain(_ sender: Any) {
        Player.instance.setupPlayer()
        self.view.window!.rootViewController?.dismiss(animated: false, completion: nil)
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
