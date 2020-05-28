//
//  AppDelegate.swift
//  IdleTimerTest
//
//  Created by Tim Ekl on 5/27/20.
//  Copyright © 2020 Tim Ekl. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    static var shared: AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate
    }
    
    var launchDate: Date = .distantPast

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        application.isIdleTimerDisabled = true
        launchDate = Date()
        return true
    }

}

