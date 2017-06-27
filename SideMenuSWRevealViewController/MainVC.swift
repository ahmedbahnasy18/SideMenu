//
//  ViewController.swift
//  SideMenuSWRevealViewController
//
//  Created by ahmed on 6/19/17.
//  Copyright © 2017 MyCompany. All rights reserved.
//

import UIKit

class MainVC: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
//        if let vc = self.revealViewController() {
//            let leftButton = UIBarButtonItem(title: "Left", style: .plain, target: vc, action: #selector(vc.revealToggle(_:)))
//            navigationItem.leftBarButtonItem = leftButton
//            
//            let rightButton = UIBarButtonItem(title: "Right", style: .plain, target: vc, action: #selector(vc.rightRevealToggle(_:)))
//            navigationItem.rightBarButtonItem = rightButton
//            
//        self.view.addGestureRecognizer(vc.panGestureRecognizer())
//        self.view.addGestureRecognizer(vc.tapGestureRecognizer())
            
//          vc.rearViewRevealWidth = 100
//          vc.rearViewRevealOverdraw = -60
//          vc.rearViewRevealDisplacement = 40
//          vc.rightViewRevealWidth = 100
            
//            vc.toggleAnimationDuration = 2
//            vc.toggleAnimationType = .easeOut
//            
//            vc.frontViewShadowColor = UIColor.red
//            vc.frontViewShadowRadius = 15
            
        }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextButton(_ sender: AnyObject) {
        
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController")
        let navC = UINavigationController(rootViewController: vc!)
        
        if let reveal = self.revealViewController() {
            reveal.pushFrontViewController(navC, animated: true)
            //reveal.setRear(navC, animated: true)
        }
    }
   

}

