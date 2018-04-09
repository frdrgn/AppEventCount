//
//  AppDelegate.swift
//  AppEventCount
//
//  Created by Mikk Noorkõiv on 05/04/2018.
//  Copyright © 2018 Mikk Noorkõiv. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow? // Optional!
    var viewController: ViewController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        viewController = window?.rootViewController as? ViewController
        // Must make an instance of rootViewController and downcast it to type ViewController
        // Gives AppDelegate access to ViewController class
        
        viewController?.launchCount += 1 // Count every app cycle and increase counter value
        
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        viewController?.resignActiveCount += 1
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        viewController?.enterBgrCount += 1
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        viewController?.willEnterForegroundCount += 1
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        viewController?.didBecomeActiveCount += 1
        viewController?.updateView() // Call the updateView method in the ViewController class
    }

    func applicationWillTerminate(_ application: UIApplication) {
        viewController?.willTerminateCount += 1
    }


}

