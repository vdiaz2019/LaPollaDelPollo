//
//  HomeTabController.swift
//  LaPollaDelPollo
//
//  Created by Victor Hugo Diaz Rojas on 28/06/22.
//

import UIKit

class HomeTabController: UITabBarController {

    @IBOutlet weak var tabBarMenu: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
        // Do any additional setup after loading the view.
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("JOS")
        setStatusBarBackgroundColor(color: .systemIndigo)
    }

    func setStatusBarBackgroundColor(color: UIColor) {

        if #available(iOS 13.0, *) {
            let window = UIApplication.shared.windows.filter {$0.isKeyWindow}.first
            let statusBar = UIView(frame: window?.windowScene?.statusBarManager?.statusBarFrame ?? CGRect.zero)
            statusBar.backgroundColor = color
            window?.addSubview(statusBar)
        } else {
            guard let statusBar = UIApplication.shared.value(forKeyPath: "statusBarWindow.statusBar") as? UIView else { return }
            statusBar.backgroundColor = color
        }
    }
}
