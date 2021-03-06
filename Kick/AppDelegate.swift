//
//  AppDelegate.swift
//  Kick
//
//  Created by BernSternWhoEarns on 7/7/17.
//  Copyright © 2017 BernSternWhoEarns. All rights reserved.
//

import UIKit
import CoreLocation
import KontaktSDK

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate, CLLocationManagerDelegate{

    var window: UIWindow?
    
    
    
    
    //define Region for monitoring
    //let region = CLBeaconRegion(proximtyUUID:)
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let defaults = UserDefaults.standard
        
        if (!defaults.bool(forKey: "init")) {
            defaults.set(true, forKey: "init")
            defaults.set(false, forKey: "one")
            defaults.set(false, forKey: "two")
            defaults.set(false, forKey: "three")
            defaults.set(false, forKey: "four")
            defaults.set(false, forKey: "five")
            defaults.set(false, forKey: "all")
            print("this should only run once")
        }
        
        Kontakt.setAPIKey("LRmWVzJtEnbmtVqoWyVFBoaXPmKuxxGV")

        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        //SocketIOManager.sharedInstance.closeConnection()
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        //SocketIOManager.sharedInstance.establishConnection()
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

