//
//  MainViewController.swift
//  ContainerExample
//
//  Created by Fabiano Oliveira on 02/04/2019.
//  Copyright © 2019 Fabiano Oliveira. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    var containerViewController: ContainerViewController?
    var num = 0
    
    @IBOutlet weak var lblMain: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       lblMain.text = containerViewController?.firstViewController.lblFirst.text
    }
    
    @IBAction func btnOne(_ sender: Any) {
        lblMain.text = containerViewController?.firstViewController.lblFirst.text
        containerViewController?.updateView(newIndex: 0)
    }
    
    @IBAction func btnTwo(_ sender: Any) {
        lblMain.text = containerViewController?.secondViewController.lblSecond.text
        containerViewController?.updateView(newIndex: 1)
    }
    
    @IBAction func btnCentral(_ sender: Any) {
        if containerViewController?.oldIndex == 0 {
            self.num = 1
        }else{
            self.num = 0
        }
        containerViewController?.updateView(newIndex: num)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "masterContainer" {
            let vc = segue.destination as! ContainerViewController
            containerViewController = vc
        }
    }
    
}
