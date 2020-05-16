//
//  AppDelegate.swift
//  BitTicker
//
//  Created by Sreekumar K on 15/05/2020.
//  Copyright © 2020 Sreekumar K. All rights reserved.
//

import UIKit
import Firebase


@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    private var reachability: Reachability?

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        configureReachability()
        showInitialView()
        configureNavigationBar()
        
        /// Firebase config
        FirebaseApp.configure()
    
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
    }

    func applicationWillTerminate(_ application: UIApplication) {
    }
}

//MARK: - Navigation methods
extension AppDelegate  {
    
    private func showInitialView() {
        
        window = UIWindow(frame: UIScreen.main.bounds)
        RootRouter().presentLoginScreen(in: window!)
    }
    
    private func configureNavigationBar() {
        UINavigationBar.appearance().barStyle = .default
        UINavigationBar.appearance().barTintColor = .systemBlue
        UINavigationBar.appearance().tintColor = .white()
        UINavigationBar.appearance().barStyle = .default
        if let font = UIFont(name: "Futura-CondensedExtraBold", size: 22.0) {
            UINavigationBar.appearance().titleTextAttributes = [
                   .foregroundColor: UIColor.white,
                   .font: font ]
        }
    }
    
}

//MARK: - Reachability
extension AppDelegate {

    private func configureReachability() {
        NotificationCenter.default.addObserver(self, selector: #selector(handleNetworkChange), name: NSNotification.Name.reachabilityChanged, object: nil)
        reachability = Reachability.forInternetConnection()
        reachability?.startNotifier()
    }

    @objc private func handleNetworkChange() {
        if !ReachabilityManager.shared.hasConnection() {
            showReachabilityMessage(true)
            return
        }

        showReachabilityMessage(false)
    }

    /**
     * Show reachability message
     *
     * - parameters:
     *      -show: show / hide reachability message
     */
    private func showReachabilityMessage(_ show: Bool) {
        guard let rootViewController = UIApplication.shared.windows[0].rootViewController else {
            return
        }

        if show, let _ = rootViewController.presentedViewController as? GeneralMessageViewController {
            return
        }

        if show {
            let generalMessageViewController = GeneralMessageViewController()
            generalMessageViewController.modalTransitionStyle = .coverVertical
            generalMessageViewController.modalPresentationStyle = .overCurrentContext
            generalMessageViewController.presenter = GeneralMessagePresenter(view: generalMessageViewController, type: .NoInternetConnection)
            rootViewController.present(generalMessageViewController, animated: true, completion: nil)
        } else {
            rootViewController.dismiss(animated: true, completion: nil)
        }
    }
    
}

