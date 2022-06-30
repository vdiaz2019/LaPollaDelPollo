//
//  AppDelegate.swift
//  LaPollaDelPollo
//
//  Created by Victor Hugo Diaz Rojas on 16/06/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
//        // TODO: JOS
//
//        UINavigationBar.appearance().backgroundColor = .systemIndigo
//        UINavigationBar.appearance().barTintColor = .blue
//        UINavigationBar.appearance().tintColor = .yellow
//        UINavigationBar.appearance().titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]


        
        
        // TODO: Pendiente validar si el cliente se encuentra loggeado
        // var isLogger = false
        var vc: UIViewController? = nil
        
        //UserDefaults.standard.set(true, forKey: "login_success") //cuando empleas el metodo de login
        var isLogged = UserDefaults.standard.bool(forKey: "login_success")
        
        isLogged = true
        
        if isLogged {
            vc = UIStoryboard.init(name: "Feature-Home", bundle: nil).instantiateViewController(withIdentifier: "HomeTC") as! UITabBarController
        } else {
            let loginVC = UIStoryboard.init(name: "Feature-Login", bundle: nil).instantiateViewController(withIdentifier: "LoginVC") as! LoginViewController
            vc = UINavigationController(rootViewController: loginVC)
        }
        
        self.window?.rootViewController = vc
        self.window?.makeKeyAndVisible()
            
        return true
    }
}

