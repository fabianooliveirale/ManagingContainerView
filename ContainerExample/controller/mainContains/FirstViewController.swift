//
//  SumaryViewController.swift
//  ContainerExample
//
//  Created by Fabiano Oliveira on 02/04/2019.
//  Copyright © 2019 Fabiano Oliveira. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var lblFirst: UILabel!
    
    var masterViewController: MasterViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func btnFourth(_ sender: Any) {
        performSegue(withIdentifier: "pushFourth", sender: nil)
    }
    
    @IBAction func btnSecond(_ sender: Any) {
        masterViewController?.refreshView(newIndex: (masterViewController?.SECONDVIEW)!)
        masterViewController!.mainViewController?.labelMain.text = masterViewController?.secondViewController.lblSecond.text
    }
}
