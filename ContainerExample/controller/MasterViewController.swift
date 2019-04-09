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
    
    private var oldIndex: Int = 0
    
    var TextString:String = ""
    var lastIndex: Int = IndexView().FIRSTVIEW
    
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
    
    lazy var thirdViewController: ThirdViewController = {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // Instantiate View Controller
        var viewController = storyboard.instantiateViewController(withIdentifier: "thirdViewController") as! ThirdViewController
        
        // Injection
        viewController.masterViewController = self
        
        // Add View Controller as Child View Controller
        self.add(asChildViewController: viewController)
        
        return viewController
    }()
    
    lazy var fourthViewController: FourthViewController = {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // Instantiate View Controller
        var viewController = storyboard.instantiateViewController(withIdentifier: "fourthViewController") as! FourthViewController
        
        // Injection
        viewController.masterViewController = self
        
        // Add View Controller as Child View Controller
        self.add(asChildViewController: viewController)
        
        return viewController
    }()
    
    lazy var fifthViewController: FifthViewController = {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // Instantiate View Controller
        var viewController = storyboard.instantiateViewController(withIdentifier: "fifthViewController") as! FifthViewController
        
        // Injection
        viewController.masterViewController = self
        
        // Add View Controller as Child View Controller
        self.add(asChildViewController: viewController)
        
        return viewController
    }()
    
    lazy var sixthViewController: SixthViewController = {
        // Load Storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        
        // Instantiate View Controller
        var viewController = storyboard.instantiateViewController(withIdentifier: "sixthViewController") as! SixthViewController
        
        // Injection
        viewController.masterViewController = self
        
        // Add View Controller as Child View Controller
        self.add(asChildViewController: viewController)
        
        return viewController
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func changeView(newIndex: Int) {
        removeView(newIndex: newIndex)
    }
    
    private func removeView(newIndex: Int){
        switch oldIndex {
        case IndexView().FIRSTVIEW:
            remove(asChildViewController: firstViewController)
            break
        case IndexView().SECONDVIEW:
            remove(asChildViewController: secondViewController)
            break
        case IndexView().THIRDVIEW:
            remove(asChildViewController: thirdViewController)
            break
        case IndexView().FOURTHVIEW:
            remove(asChildViewController: fourthViewController)
            break
        case IndexView().FIFTHVIEW:
            remove(asChildViewController: fifthViewController)
            break
        case IndexView().SIXTHVIEW:
            remove(asChildViewController: sixthViewController)
            break
        default:
            print("Erro")
        }
        addView(newIndex: newIndex)
    }
    
    private func addView(newIndex: Int){
        switch newIndex {
        case IndexView().FIRSTVIEW:
            add(asChildViewController: firstViewController)
            break
        case IndexView().SECONDVIEW:
            add(asChildViewController: secondViewController)
            break
        case IndexView().THIRDVIEW:
            add(asChildViewController: thirdViewController)
            break
        case IndexView().FOURTHVIEW:
            add(asChildViewController: fourthViewController)
            break
        case IndexView().FIFTHVIEW:
            add(asChildViewController: fifthViewController)
            break
        case IndexView().SIXTHVIEW:
            add(asChildViewController: sixthViewController)
            break
        default:
            print("Erro")
        }
        lastIndex = oldIndex
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

