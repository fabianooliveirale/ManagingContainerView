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
        labelMain.text = masterViewController?.firstViewController.lblFirst.text
        masterViewController?.changeView(newIndex: masterViewController?.lastIndex ?? 0)
    }
    
    override func viewWillAppear(_ animated: Bool) {
    }
    
    @IBAction func btnOne(_ sender: Any) {
        labelMain.text = masterViewController?.firstViewController.lblFirst.text
        masterViewController?.changeView(newIndex: IndexView().FIRSTVIEW)
    }
    
    @IBAction func btnTwo(_ sender: Any) {
         performSegue(withIdentifier: "pushResult", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "masterContainer" {
            let vc = segue.destination as! MasterViewController
            masterViewController = vc
            masterViewController?.mainViewController = self
        }
        if segue.identifier == "pushResult" {
            let vc = segue.destination as! ResultsViewController
            vc.textResult = masterViewController?.TextString ?? ""
        }
    }
}
