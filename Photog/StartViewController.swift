//
//  StartViewController.swift
//  Photog
//
//  Created by Manmeet Saluja on 25/3/15.
//  Copyright (c) 2015 Manmeet Saluja. All rights reserved.
//

import UIKit

class StartViewController: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBarHidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func didTapSignIn(sender: AnyObject){
        var viewController = AuthViewController(nibName: "AuthViewController", bundle: nil)
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    
    @IBAction func didTapSignUp(sender: AnyObject){
        var viewController = AuthViewController(nibName: "AuthViewController", bundle: nil)
        self.navigationController?.pushViewController(viewController, animated: true)
    }
    

}
