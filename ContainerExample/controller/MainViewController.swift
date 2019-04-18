//
//  MainViewController.swift
//  ContainerExample
//
//  Created by Fabiano Oliveira on 02/04/2019.
//  Copyright © 2019 Fabiano Oliveira. All rights reserved.
//

import UIKit

class MainViewController: BaseViewController{
    
    @IBOutlet weak var labelMain: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelMain.text = masterViewController.firstViewController.lblFirst.text
        masterViewController.changeView(newViewController: masterViewController.firstViewController)
    }
    
    @IBAction func btnOne(_ sender: Any) {
        labelMain.text = masterViewController.firstViewController.lblFirst.text
        masterViewController.changeView(newViewController: masterViewController.firstViewController)
    }
    
    @IBAction func btnTwo(_ sender: Any) {
        performSegue(withIdentifier: "pushResult", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "masterContainer" {
            let vc = segue.destination as! MasterViewController
            masterViewController = vc
            masterViewController.mainViewController = self
        }
        
        if segue.identifier == "pushResult" {
            let vc = segue.destination as! ResultsViewController
            vc.textResult = masterViewController.TextString 
        }
    }
}
