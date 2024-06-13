//
//  AppDelegate.swift
//  iOS_UI_Assignment
//
//  Created by Bhushan Mokal on 13/06/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var navigationView: UINavigationController?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow(frame: UIScreen.main.bounds)
        let vc = TabbarController()
        navigationView = UINavigationController(rootViewController: vc)
        window?.rootViewController = navigationView
        window?.makeKeyAndVisible()
        
        return true
    }
}

