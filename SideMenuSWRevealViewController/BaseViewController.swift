//
//  BaseViewController.swift
//  SideMenuSWRevealViewController
//
//  Created by ahmed on 6/19/17.
//  Copyright © 2017 MyCompany. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController, SWRevealViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let vc = self.revealViewController() {
            let leftButton = UIBarButtonItem(title: "Left", style: .plain, target: vc, action: #selector(vc.revealToggle(_:)))
            navigationItem.leftBarButtonItem = leftButton
            
            let rightButton = UIBarButtonItem(title: "Right", style: .plain, target: vc, action: #selector(vc.rightRevealToggle(_:)))
            navigationItem.rightBarButtonItem = rightButton
            
            self.view.addGestureRecognizer(vc.panGestureRecognizer())
            self.view.addGestureRecognizer(vc.tapGestureRecognizer())
            
            vc.delegate = self
        }

      
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }

    func revealController(_ revealController: SWRevealViewController!, willAdd viewController: UIViewController!, for operation: SWRevealControllerOperation, animated: Bool) {
        print("will add view controller")
        
    }
    func revealController(_ revealController: SWRevealViewController!, didAdd viewController: UIViewController!, for operation: SWRevealControllerOperation, animated: Bool) {
        
        if let myNavC = viewController as? UINavigationController {
            let myVC = myNavC.visibleViewController
            if myVC is MainVC {
                print("MainVC is presented")
            }else if myVC is SecondViewController{
                print("SecondVC is presented")
            }else{
                print("other")
            }
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}

