//
//  UserProfile.swift
//  ChallengeFinalFoundations
//
//  Created by Denise Maliska Guimarães  on 25/07/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import UIKit

class UserProfile: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var NameUser: UILabel!
    @IBOutlet weak var EmailUser: UILabel!
    
    @IBAction func CriarSalas(_ sender: Any) {
        print("Jose")
    }
    
    @IBAction func Salas(_ sender: Any) {
        print("Jose")
    }
    
    @IBAction func Personagem(_ sender: Any) {
        print("Sophia")
    }
    

    fileprivate func openCamera() {
        let profileImagePicker = UIImagePickerController()
        profileImagePicker.sourceType = UIImagePickerController.SourceType.camera
        //    profileImagePicker.mediaTypes = [kUTTypeImage as String]
        profileImagePicker.cameraCaptureMode = .photo
        profileImagePicker.modalPresentationStyle = .fullScreen
        profileImagePicker.delegate = self
        present(profileImagePicker, animated: true, completion: nil)
    }
    
    @IBAction func ImageButtom(_ sender: Any){

        let alertController = UIAlertController(title: "Imagem", message: "Escolha a origem da imagem", preferredStyle: .actionSheet)
        
        let cameraAction = UIAlertAction(title: "Camera", style: .default) { (action) in
            self.openCamera()
        }
        alertController.addAction(cameraAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive) { (action) in
            self.dismiss(animated: true, completion: nil)
        }
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
        
    }
    
    
    
    fileprivate func openLibrary() {
        let profileImagePicker = UIImagePickerController()
        profileImagePicker.allowsEditing = false
        profileImagePicker.sourceType = UIImagePickerController.SourceType.photoLibrary
        //profileImagePicker.mediaTypes = [kUTTypeImage as String]
        profileImagePicker.delegate = self
        
        present(profileImagePicker, animated: true, completion: nil)
        
        
    }

    
    @IBAction func LibraryButtom(_ sender: Any){
        
        let alertController = UIAlertController(title: "Library", message: "Escolha a origem da biblioteca", preferredStyle: .actionSheet)
        
        let libraryAction = UIAlertAction(title: "Library", style: .default) { (action) in
            self.openLibrary()
        }
        alertController.addAction(libraryAction)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .destructive) { (action) in
            self.dismiss(animated: true, completion: nil)
        }
        alertController.addAction(cancelAction)
        
        present(alertController, animated: true, completion: nil)
        
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
    }

}
