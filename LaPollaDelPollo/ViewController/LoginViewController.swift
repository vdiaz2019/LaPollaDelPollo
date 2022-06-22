//
//  LoginViewController.swift
//  LaPollaDelPollo
//
//  Created by Victor Hugo Diaz Rojas on 16/06/22.
//

import UIKit

class LoginViewController: ViewController {

    @IBOutlet weak var passwordText: UITextField!
    
    @IBOutlet weak var correoText: UITextField!
    
    @IBAction func login(_ sender: Any) {
        guard let correo = correoText.text, !correo.isEmpty else { return }
        guard let password = passwordText.text, !password.isEmpty else { return }
        
        print("ingresaste datos para el login")
        
    }
    
    @IBAction func cancelarLogin(_ sender: Any) {
        print("cancelarLogin - Inicio")
        self.navigationController?.popViewController(animated: true)
        print("cancelarLogin - Fin")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
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
