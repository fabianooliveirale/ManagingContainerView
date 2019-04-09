//
//  ResultsViewController.swift
//  ContainerExample
//
//  Created by Fabiano Oliveira on 08/04/2019.
//  Copyright © 2019 Fabiano Oliveira. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var lblResult: UILabel!
    
    var textResult: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblResult.text = textResult
    }
}
