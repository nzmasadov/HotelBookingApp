//
//  AppDelegate.swift
//  homework_3_IATC_nzmasadov
//
//  Created by Nazim Asadov on 20.04.22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = MainViewController()
        window?.rootViewController = vc
        window?.makeKeyAndVisible()
        
        return true
    }


}

