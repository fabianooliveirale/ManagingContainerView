//
//  MainViewController.swift
//  ContainerExample
//
//  Created by Fabiano Oliveira on 02/04/2019.
//  Copyright © 2019 Fabiano Oliveira. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var masterViewController: MasterViewController?
    
    let FIRSTVIEW: Int = 0
    let SECONDVIEW: Int = 1
    
    @IBOutlet weak var labelMain: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelMain.text = masterViewController?.firstViewController.lblFirst.text
         masterViewController?.refreshView(newIndex: FIRSTVIEW)
    }
    
    @IBAction func btnOne(_ sender: Any) {
        labelMain.text = masterViewController?.firstViewController.lblFirst.text
        masterViewController?.refreshView(newIndex: FIRSTVIEW)
    }
    
    @IBAction func btnTwo(_ sender: Any) {
         labelMain.text = masterViewController?.secondViewController.lblSecond.text
         masterViewController?.refreshView(newIndex: SECONDVIEW)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "masterContainer" {
            let vc = segue.destination as! MasterViewController
            masterViewController = vc
            masterViewController?.mainViewController = self
        }
    }
}
