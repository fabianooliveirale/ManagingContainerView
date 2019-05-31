//
//  FourViewController.swift
//  ContainerExample
//
//  Created by Fabiano Oliveira on 02/04/2019.
//  Copyright © 2019 Fabiano Oliveira. All rights reserved.
//

import UIKit

class FourthViewController: BaseViewController {

    @IBOutlet weak var lblFourth: UILabel!
    @IBOutlet weak var textFull: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        textFull.text = masterViewController.TextString
    }

    @IBAction func btnClose(_ sender: Any) {
        masterViewController.mainViewController?.labelMain.text = masterViewController.firstViewController.lblFirst.text
        masterViewController.changeView(newViewController: masterViewController.firstViewController)
    }
    
    @IBAction func btnFifth(_ sender: Any) {
        masterViewController.mainViewController?.labelMain.text = masterViewController.fifthViewController.lblFifth.text
        masterViewController.changeView(newViewController: masterViewController.fifthViewController)
    }
    
    @IBAction func btnPress(_ sender: Any) {
        masterViewController.secondViewController.lblSecond.text = "OLÁMUNDO"
        masterViewController.TextString += lblFourth.text! + ", "
        textFull.text = masterViewController.TextString
    }
}
