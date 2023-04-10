//
//  ViewController.swift
//  FoursquareClone
//
//  Created by Tuğçe Özçakır on 5.04.2023.
//

import UIKit
import Parse

class SingInVC: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var textLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func signUpClicked(_ sender: Any) {
        if usernameText.text != "" && passwordText.text != "" {
            let user = PFUser()
            user.username = usernameText.text
            user.password = passwordText.text
            
            user.signUpInBackground { success, error in
                if error != nil {
                    self.showAlert(title: "Error", message: error?.localizedDescription ?? "Error!!")
                }
                else{
                    //performSegue(withIdentifier: <#T##String#>, sender: <#T##Any?#>)
                }
            }
        }
        else {
            showAlert(title: "Error", message: "Email/Password?")
        }
    }
    
    @IBAction func signInClicked(_ sender: Any) {
        if usernameText.text != "" && passwordText.text != "" {
            PFUser.logInWithUsername(inBackground: usernameText.text!, password: passwordText.text!) { user, error in
                if error != nil {
                    self.showAlert(title: "Error", message: error?.localizedDescription ?? "Error")
                }
                else{
                    self.performSegue(withIdentifier: "toPlacesVC", sender: nil)
                }
            }
        }
        else {
            showAlert(title: "Error", message: "Email/Password?")
        }
    }
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        present(alert, animated: true)
    }
}

