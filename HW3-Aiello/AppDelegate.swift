//
//  AppDelegate.swift
//  HW3-Aiello
//
//  Created by Tony Aiello on 3/23/19.
//  Copyright © 2019 Tony Aiello. All rights reserved.
//

// For this homework, I did the views programatically
//
// I looked up the time and set the hour variable - it's based on a 24-hour clock
// so am would be 5-17 and pm is 17-23 and 0-4

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
//    var darkerRed: UIColor
//    var darkerGreen: UIColor

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        
        // Let's set some colors to work with
        
        let darkerRed = UIColor(red: 62/255.0, green: 2/255.0, blue: 2/255.0, alpha: 1.0)
        let darkerGreen = UIColor(red: 03/255.0, green: 63/255.0, blue: 07/255.0, alpha: 1.0)
        
        let nightScreen1 = darkerRed
        let dayScreen1 = UIColor.red
        let nightScreen2 = darkerGreen
        let dayScreen2 = UIColor.green

        
        // Set the hour of the day
        let hour = NSCalendar.current.component(.hour, from : NSDate() as Date)
        
        
        
        // Set up the first screen
        let screen1 = UIViewController()
//        screen1.view.backgroundColor = UIColor.red
        // I looked up the time and set the hour variable - it's based on a 24-hour clock
        // so am would be 6-18 and pm is 18-23 and 0-6
        
        // By deduction, day is > 5 and < 18 so everything else is night
        // assume day is 6 am - 6pm and night is 6pm - 6am
        // but on a 24 hr clock, night is enumerated to 18-23 AND 0-6
        // to avoid complicated switch or if statements
        //
        // it is night or it is day
        // if hour > 5 and hour <18 it is day else it is night
        //
        //
        
        
        // if hour > 5 and hour <18 it is day else it is night
        if (hour > 5 && hour < 18 ){
            screen1.view.backgroundColor = dayScreen1 }
        else { screen1.view.backgroundColor = nightScreen1}
        
        
        screen1.tabBarItem.title = "Screeen 1"
        screen1.tabBarItem.image = UIImage(named: "first")
        
        
        //Set Up Screen 2
        let screen2 = UIViewController()
        
        // if hour > 5 and hour <18 it is day else it is night
        
//        screen2.view.backgroundColor = UIColor.green
        if (hour > 5 && hour < 18) {
            screen2.view.backgroundColor = dayScreen2
    
        }else {
            screen2.view.backgroundColor = nightScreen2
        }
//        screen2.view.backgroundColor = darkerGreen
        
        screen2.tabBarItem.title = "Screen 2"
        screen2.tabBarItem.image = UIImage(named: "second")
        
        // set tab bar to have 2 tabe
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [screen1, screen2]
        
        // Make the tab bar the root
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

