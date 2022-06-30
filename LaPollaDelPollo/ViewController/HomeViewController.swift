//
//  HomeViewController.swift
//  LaPollaDelPollo
//
//  Created by Victor Hugo Diaz Rojas on 28/06/22.
//

import UIKit

class HomeViewController: UIViewController {

    @IBAction func juega(_ sender: Any) {
        print("Hice click al botón")
        self.tabBarController?.selectedIndex = 1
    }
    
    @IBAction func invitaAmigos(_ sender: Any) {
        print("Hice click al botón 2")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
