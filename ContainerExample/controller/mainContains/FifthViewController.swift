//
//  FifthViewController.swift
//  ContainerExample
//
//  Created by Fabiano Oliveira on 08/04/2019.
//  Copyright © 2019 Fabiano Oliveira. All rights reserved.
//

import UIKit

class FifthViewController: BaseViewController {
    
    @IBOutlet weak var textFull: UILabel!
    @IBOutlet weak var lblFifth: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        textFull.text = masterViewController.TextString
    }
    
    @IBAction func btnVoltar(_ sender: Any) {
        masterViewController.mainViewController?.labelMain.text = masterViewController.fourthViewController.lblFourth.text
        masterViewController.changeView(newViewController: masterViewController.fourthViewController)
    }
    
    @IBAction func btnSixth(_ sender: Any) {
        masterViewController.mainViewController?.labelMain.text = masterViewController.sixthViewController.lblSixth.text
        masterViewController.changeView(newViewController: masterViewController.sixthViewController)
    }
    
    @IBAction func btnPress(_ sender: Any) {
        masterViewController.TextString += lblFifth.text! + ", "
        textFull.text = masterViewController.TextString
    }
}
