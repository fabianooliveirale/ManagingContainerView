//
//  SixthViewController.swift
//  ContainerExample
//
//  Created by Fabiano Oliveira on 08/04/2019.
//  Copyright © 2019 Fabiano Oliveira. All rights reserved.
//

import UIKit

class SixthViewController: BaseViewController {

    @IBOutlet weak var textFull: UILabel!
    @IBOutlet weak var lblSixth: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        textFull.text = masterViewController?.TextString
    }
    
    @IBAction func btnThird(_ sender: Any) {
        masterViewController!.mainViewController?.labelMain.text = masterViewController?.thirdViewController.lblThird.text
        masterViewController?.changeView(newIndex: IndexView().THIRDVIEW)
    }
    @IBAction func btnVoltar(_ sender: Any) {
            masterViewController!.mainViewController?.labelMain.text = masterViewController?.fifthViewController.lblFifth.text
            
            masterViewController?.changeView(newIndex: IndexView().FIFTHVIEW)
    }
    @IBAction func btnPress(_ sender: Any) {
        masterViewController?.TextString += lblSixth.text! + ", "
        
        textFull.text = masterViewController?.TextString
    }
}
