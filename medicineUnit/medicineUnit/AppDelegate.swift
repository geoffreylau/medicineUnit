//
//  AppDelegate.swift
//  medicineUnit
//
//  Created by Geo on 16/11/18.
//  Copyright © 2016年 Geo. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        application.isStatusBarHidden = true
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        let rootController = MedicineRootViewController()
        self.window?.rootViewController = rootController
        self.window?.makeKeyAndVisible()
        
        return true
    }
}

