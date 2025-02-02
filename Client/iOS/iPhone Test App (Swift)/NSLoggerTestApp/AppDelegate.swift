//
//  AppDelegate.swift
//  NSLoggerTestApp
//
//  Created by Mathieu Godart on 10/03/2017.
//  Copyright © 2017 Lauve. All rights reserved.
//

import UIKit
// Not needed as the NSLogger client source code has been
// added to this project.
//import NSLogger

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        // Avoid NSLogger client to search on Bonjour.
        //LoggerSetViewerHost(nil, "localhost" as NSString, 50000)

        SecrchServices { (services, logger) in
            print("dasdsa");
            ConnectToService(logger, services?[0]);
        }
        Logger.shared.log(.app, .important, "Hello, Swift Logger Tester! 🤖")
        return true
    }

}

