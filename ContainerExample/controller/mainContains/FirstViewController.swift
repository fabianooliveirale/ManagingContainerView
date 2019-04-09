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
    @IBOutlet weak var textFull: UILabel!
    
    var masterViewController: MasterViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        textFull.text = masterViewController?.TextString
    }
    @IBAction func btnFourth(_ sender: Any) {
        masterViewController!.mainViewController?.labelMain.text = masterViewController?.fourthViewController.lblFourth.text
        masterViewController?.changeView(newIndex: IndexView().FOURTHVIEW)
    }
    
    @IBAction func btnSecond(_ sender: Any) {
        masterViewController!.mainViewController?.labelMain.text = masterViewController?.secondViewController.lblSecond.text
            masterViewController?.changeView(newIndex: IndexView().SECONDVIEW)
    }
    @IBAction func btnPress(_ sender: Any) {
        masterViewController?.TextString += lblFirst.text! + ", "
        
        textFull.text = masterViewController?.TextString
    }
}
