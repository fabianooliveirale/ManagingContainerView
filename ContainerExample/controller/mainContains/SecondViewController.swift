//
//  SessionViewController.swift
//  ContainerExample
//
//  Created by Fabiano Oliveira on 02/04/2019.
//  Copyright © 2019 Fabiano Oliveira. All rights reserved.
//

import UIKit

class SecondViewController: BaseViewController {

    @IBOutlet weak var lblSecond: UILabel!
    @IBOutlet weak var textFull: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //print(SleepViews().firstViewController.lblFirst)
    }
    
    override func viewWillAppear(_ animated: Bool) {
         textFull.text = masterViewController?.TextString
    }
    
    @IBAction func btnThird(_ sender: Any) {
        masterViewController!.mainViewController?.labelMain.text = masterViewController?.thirdViewController.lblThird.text
        masterViewController?.changeView(newIndex: IndexView().THIRDVIEW)
    }
    
    @IBAction func btnFirst(_ sender: Any) {
        masterViewController!.mainViewController?.labelMain.text = masterViewController?.firstViewController.lblFirst.text
        masterViewController?.changeView(newIndex: IndexView().FIRSTVIEW)
    }
    @IBAction func btnPress(_ sender: Any) {
        masterViewController?.TextString += lblSecond.text! + ", "
        
        textFull.text = masterViewController?.TextString
    }
}
