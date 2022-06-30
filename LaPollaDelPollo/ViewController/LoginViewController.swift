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
    
    @IBAction func cancelarLogin(_ sender: Any) {
        print("cancelarLogin - Inicio")
        self.navigationController?.popViewController(animated: true)
        print("cancelarLogin - Fin")
    }
    
    @IBAction func login(_ sender: Any) {
        guard let correo = correoText.text, !correo.isEmpty else { return }
        guard let password = passwordText.text, !password.isEmpty else { return }
        
        let vc = UIStoryboard.init(name: "Feature-Home", bundle: nil).instantiateViewController(withIdentifier: "HomeTC") as! UITabBarController
        // self.present(vc, animated: true, completion: nil)
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.setHidesBackButton(true, animated: true)
        
        self.correoText?.attributedPlaceholder = NSAttributedString(
            string: "Correo Electrónico",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        
        self.passwordText?.attributedPlaceholder = NSAttributedString(
            string: "Contraseña",
            attributes: [NSAttributedString.Key.foregroundColor: UIColor.lightGray]
        )
        
        NotificationCenter.default.addObserver(self, selector: #selector(teclado(notificacion:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(teclado(notificacion:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(teclado(notificacion:)), name: UIResponder.keyboardWillChangeFrameNotification, object: nil)
    }
    
    @objc func teclado(notificacion: Notification) {
        guard let tecladoUp = (notificacion.userInfo![UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else { return }
        
        if (notificacion.name == UIResponder.keyboardWillShowNotification) {
            //if (UIScreen.main.nativeBounds.height <= 1136) {
                self.view.frame.origin.y = -tecladoUp.height
            //}
        } else {
            self.view.frame.origin.y = 0
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
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
