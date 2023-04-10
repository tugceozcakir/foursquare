//
//  AddPlaceVC.swift
//  FoursquareClone
//
//  Created by Tuğçe Özçakır on 5.04.2023.
//

import UIKit

class AddPlaceVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var placeImage: UIImageView!
    @IBOutlet weak var placeAtmosphereText: UITextField!
    @IBOutlet weak var placeTypeText: UITextField!
    @IBOutlet weak var placeNameText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        placeImage.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(chooseImage))
        placeImage.addGestureRecognizer(gestureRecognizer)
    }

    @objc func chooseImage(){
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        present(picker, animated: true)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        placeImage.image = info[.originalImage] as? UIImage
        self.dismiss(animated: true)
    }
    
    @IBAction func clickedNextButton(_ sender: Any) {
        performSegue(withIdentifier: "toMapVC", sender: nil)
    }
}
