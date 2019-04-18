//
//  ThirdViewController.swift
//  ContainerExample
//
//  Created by Fabiano Oliveira on 02/04/2019.
//  Copyright © 2019 Fabiano Oliveira. All rights reserved.
//

import UIKit

class ThirdViewController: BaseViewController {
    
    @IBOutlet weak var lblThird: UILabel!
    @IBOutlet weak var textFull: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        textFull.text = masterViewController.TextString
    }
    
    @IBAction func btnClose(_ sender: Any) {
        masterViewController.mainViewController?.labelMain.text = masterViewController.secondViewController.lblSecond.text
        masterViewController.changeView(newViewController: masterViewController.secondViewController)
    }
    
    @IBAction func btnSixth(_ sender: Any) {
        masterViewController.mainViewController!.labelMain.text = masterViewController.sixthViewController.lblSixth.text
        masterViewController.changeView(newViewController: masterViewController.sixthViewController)
    }
    
    @IBAction func btnPress(_ sender: Any) {
        masterViewController.TextString += lblThird.text! + ", "
        textFull.text = masterViewController.TextString
    }
}
