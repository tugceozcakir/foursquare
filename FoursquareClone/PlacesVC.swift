//
//  PlacesVC.swift
//  FoursquareClone
//
//  Created by Tuğçe Özçakır on 5.04.2023.
//

import UIKit
import Parse

class PlacesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        navigationController?.navigationBar.topItem?.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.add, target: self, action: #selector(clickedAddButton))
        navigationController?.navigationBar.topItem?.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: UIBarButtonItem.Style.plain, target: self, action: #selector(clickedLogout))
    }

    @objc func clickedAddButton() {
        //Segue
        performSegue(withIdentifier: "toAddPlaceVC", sender: nil)
        
    }
    @objc func clickedLogout() {
        PFUser.logOutInBackground { error in
            if error != nil {
                self.showAlert(title: "Error", message: error?.localizedDescription ?? "Error!")
            }
            else {
                self.performSegue(withIdentifier: "toSignInVC", sender: nil)
            }
        }
    }
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: "Error", message: message, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        present(alert, animated: true)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Test"
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
    }
}
