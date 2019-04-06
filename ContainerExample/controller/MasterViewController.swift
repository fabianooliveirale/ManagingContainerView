//
//  ViewController.swift
//  ContainerExample
//
//  Created by Fabiano Oliveira on 02/04/2019.
//  Copyright © 2019 Fabiano Oliveira. All rights reserved.
//

import UIKit

class MasterViewController: UIViewController {
    
    var mainViewController: MainViewController?
    
    let FISTVIEW: Int = 0
    let SECONDVIEW: Int = 1
    
    private var oldIndex: Int = 0
    
     lazy var firstViewController: FirstViewController = {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // Instantiate View Controller
        var viewController = storyboard.instantiateViewController(withIdentifier: "firstViewController") as! FirstViewController
        // Injection
        viewController.masterViewController = self
    
        // Add View Controller as Child View Controller
        self.add(asChildViewController: viewController)
        
        return viewController
    }()
    
     lazy var secondViewController: SecondViewController = {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // Instantiate View Controller
        var viewController = storyboard.instantiateViewController(withIdentifier: "secondViewController") as! SecondViewController
        
        // Injection
        viewController.masterViewController = self
        
        // Add View Controller as Child View Controller
        self.add(asChildViewController: viewController)
        
        return viewController
    }()
    
    // MARK: - View Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func refreshView(newIndex: Int) {
        removeView(newIndex: newIndex)
    }
    
    private func removeView(newIndex: Int){
        switch oldIndex {
        case FISTVIEW:
            remove(asChildViewController: firstViewController)
            break
        case SECONDVIEW:
            remove(asChildViewController: secondViewController)
            break
        default:
            print("Erro")
        }
        addView(newIndex: newIndex)
    }
    
    private func addView(newIndex: Int){
        switch newIndex {
        case FISTVIEW:
            add(asChildViewController: firstViewController)
            break
        case SECONDVIEW:
            add(asChildViewController: secondViewController)
            break
        default:
            print("Erro")
        }
        oldIndex = newIndex
    }
    
    private func add(asChildViewController viewController: UIViewController) {
        // Add Child View Controller
        addChild(viewController)
        
        // Add Child View as Subview
        view.addSubview(viewController.view)
        
        // Configure Child View
        viewController.view.frame = view.bounds
        viewController.view.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
        // Notify Child View Controller
        viewController.didMove(toParent: self)
    }
    
    private func remove(asChildViewController viewController: UIViewController) {
        // Notify Child View Controller
        viewController.willMove(toParent: nil)
        
        // Remove Child View From Superview
        viewController.view.removeFromSuperview()
        
        // Notify Child View Controller
        viewController.removeFromParent()
    }
}

