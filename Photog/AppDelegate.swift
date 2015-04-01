//
//  AppDelegate.swift
//  Photog
//
//  Created by Manmeet Saluja on 14/3/15.
//  Copyright (c) 2015 Manmeet Saluja. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        self.setupParse()
        self.setupAppAppearence()
        self.window = UIWindow(frame: UIScreen.mainScreen().bounds)
        
        var navigationController = UINavigationController()
        var startViewController = StartViewController(nibName: "StartViewController", bundle: nil)
        //startViewController.view.backgroundColor = UIColor.yellowColor()
        
        if PFUser.currentUser() == nil
        {
            navigationController.viewControllers = [startViewController]
            // go to the login/ sign up page
            println("user does not exist!")
        }
        else
        {
            //
            println("we have a user")
        }
        
        self.window!.rootViewController = navigationController
        self.window!.makeKeyAndVisible()
        
        return true
    }
    
    func setupParse(){
        let dic = NSProcessInfo.processInfo().environment
        let clientKeyConstant = dic["PARSE_CLIENT_KEY"] as? String
        let mainKeyConstant = dic["PARSE_KEY"] as? String
        Parse.setApplicationId(mainKeyConstant, clientKey: clientKeyConstant)
        //var testObject = PFObject(className: "TestObject")
        //testObject["foo"] = "boo"
        //testObject.saveInBackground();
    }
    
    func setupAppAppearence(){
        
        UIApplication.sharedApplication().statusBarStyle = .LightContent
        
        UINavigationBar.appearance().barTintColor = UIColor.blackColor()
        UINavigationBar.appearance().tintColor = UIColor.whiteColor()
        UINavigationBar.appearance().titleTextAttributes = [NSForegroundColorAttributeName : UIColor.whiteColor()]
        UITabBar.appearance().barTintColor = UIColor.blackColor()
        UITabBar.appearance().tintColor = UIColor.whiteColor()
        UITabBar.appearance().selectionIndicatorImage = UIImage(named: "SelectedTabBackground")

        
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

