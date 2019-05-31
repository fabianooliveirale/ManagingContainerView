//
//  UmNewViewController.swift
//  ContainerExample
//
//  Created by Fabiano Oliveira on 30/05/2019.
//  Copyright © 2019 Fabiano Oliveira. All rights reserved.
//

import UIKit

class UmNewViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func doisButton(_ sender: Any) {
        performSegue(withIdentifier: "pushDois", sender: nil)
    }
    
    @IBAction func tresButton(_ sender: Any) {
        performSegue(withIdentifier: "pushTres", sender: nil)
    }
    
    @IBAction func quatroButton(_ sender: Any) {
        performSegue(withIdentifier: "pushQuatro", sender: nil)
    }
    @IBAction func modalButton(_ sender: Any) {
        self.openModal(view: self, modalId: "newModal")
    }
}
