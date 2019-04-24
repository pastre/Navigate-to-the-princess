//
//  BattleResultViewController.swift
//  Teste de segues
//
//  Created by Bruno Pastre on 23/04/19.
//  Copyright © 2019 Bruno Pastre. All rights reserved.
//

import UIKit

class BattleResultViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        // TODO: preencher com os resultados do ultimo ataque
    }

    @IBAction func handleOk(_ sender: Any) {
        self.dismiss(animated: true, completion: {
            NotificationCenter.default.post(name:  NSNotification.Name(rawValue: "dismissBattle"), object: nil)
        })
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        print("BORABORAPORRABORA" )
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
 
    override func viewDidDisappear(_ animated: Bool) {
        print("SUMI" )
    }
    
}
