//
//  exUIViewController.swift
//  ContainerExample
//
//  Created by Fabiano Oliveira on 30/05/2019.
//  Copyright © 2019 Fabiano Oliveira. All rights reserved.
//

import Foundation
import UIKit


extension UIViewController {
    func openModal(view: UIViewController, modalId: String){
        if let vc = view.storyboard?.instantiateViewController(withIdentifier: modalId) {
            vc.modalTransitionStyle   = .crossDissolve;
            vc.modalPresentationStyle = .overCurrentContext
            self.present(vc, animated: true, completion: nil)
        }
    }
}
