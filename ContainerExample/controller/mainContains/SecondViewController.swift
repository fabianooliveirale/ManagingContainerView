//
//  SessionViewController.swift
//  ContainerExample
//
//  Created by Fabiano Oliveira on 02/04/2019.
//  Copyright © 2019 Fabiano Oliveira. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var lblSecond: UILabel!
    
    var masterViewController: MasterViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnThird(_ sender: Any) {
        performSegue(withIdentifier: "pushThird", sender: nil)
    }
    
    @IBAction func btnFirst(_ sender: Any) {
        masterViewController?.refreshView(newIndex: (masterViewController?.FISTVIEW)!)
        masterViewController!.mainViewController?.labelMain.text = masterViewController?.firstViewController.lblFirst.text
    }
}
