//
//  TresNewViewController.swift
//  ContainerExample
//
//  Created by Fabiano Oliveira on 30/05/2019.
//  Copyright © 2019 Fabiano Oliveira. All rights reserved.
//

import UIKit

class TresNewViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func modalButton(_ sender: Any) {
        self.openModal(view: self, modalId: "newModal")
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
