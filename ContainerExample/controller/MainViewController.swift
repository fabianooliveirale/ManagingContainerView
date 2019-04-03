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
    
    @IBOutlet weak var lblMain: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       lblMain.text = containerViewController?.firstViewController.lblFirst.text
    }
    
    @IBAction func btnOne(_ sender: Any) {
        containerViewController?.status = 0
        lblMain.text = containerViewController?.firstViewController.lblFirst.text
        containerViewController?.updateView()
    }
    
    @IBAction func btnTwo(_ sender: Any) {
        containerViewController?.status = 1
        lblMain.text = containerViewController?.secondViewController.lblSecond.text
        containerViewController?.updateView()
    }
    
    @IBAction func btnCentral(_ sender: Any) {
        if containerViewController?.status == 0{
            lblMain.text = containerViewController?.secondViewController.lblSecond.text
            containerViewController?.status = 1
        }else{
            lblMain.text = containerViewController?.firstViewController.lblFirst.text
            containerViewController?.status = 0
        }
        containerViewController?.updateView()
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "masterContainer" {
            let vc = segue.destination as! ContainerViewController
            containerViewController = vc
        }
    }
    
}
