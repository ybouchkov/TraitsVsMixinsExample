//
//  AppDelegate.swift
//  TraitsVsMixinsExample
//
//  Created by Yani Buchkov on 11/23/17.
//  Copyright © 2017 Mr Bouchkov. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        start()
        return true
    }
    
    func start() {
        window = UIWindow(frame: UIScreen.main.bounds)
        let loginViewController = LoginViewController()
        let navigationController = UINavigationController(rootViewController: loginViewController)
        navigationController.navigationBar.isTranslucent = false
        loginViewController.view.backgroundColor = .white
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }

}

