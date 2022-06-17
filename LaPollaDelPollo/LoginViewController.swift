//
//  LoginViewController.swift
//  LaPollaDelPollo
//
//  Created by Victor Hugo Diaz Rojas on 16/06/22.
//

import UIKit

class LoginViewController: ViewController {
    @IBAction func desaparecer(_ sender: UIButton) {
        print("aqui")
        dismiss(animated: true, completion: nil)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue

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
