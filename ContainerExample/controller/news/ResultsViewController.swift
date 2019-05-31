//
//  ResultsViewController.swift
//  ContainerExample
//
//  Created by Fabiano Oliveira on 08/04/2019.
//  Copyright © 2019 Fabiano Oliveira. All rights reserved.
//

import UIKit

class ResultsViewController: BaseViewController {
    
    @IBOutlet weak var lblResult: UILabel!
    
    var textResult: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lblResult.text = textResult
        print(masterViewController.fourthViewController.lblFourth.text!)
    }
    
    @IBAction func newStoryButton(_ sender: Any) {
        performSegue(withIdentifier: "pushNewStory", sender: nil)
    }
    
}
