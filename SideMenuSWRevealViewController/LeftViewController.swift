//
//  LeftViewController.swift
//  SideMenuSWRevealViewController
//
//  Created by ahmed on 6/19/17.
//  Copyright © 2017 MyCompany. All rights reserved.
//

import UIKit

class LeftViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
 
    
    @IBAction func GoButton(_ sender: UIButton) {
        if let reveal = self.revealViewController(){
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "MainVC")
            let navC = UINavigationController(rootViewController: vc!)
            reveal.pushFrontViewController(navC, animated: true)
        }
    }
    
    @IBAction func GoSecond(_ sender: UIButton) {
        if let reveal = self.revealViewController(){
            let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController")
            let navC = UINavigationController(rootViewController: vc!)
            reveal.pushFrontViewController(navC, animated: true)
        }
    
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
