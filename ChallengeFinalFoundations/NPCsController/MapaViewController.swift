//
//  MapaViewController.swift
//  ChallengeFinalFoundations
//
//  Created by Sophia Martinovski Menine on 25/07/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import UIKit

class MapaViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

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

    @IBAction func inserirMapa(_ sender: Any) {
        openCamera()
    }
    
    
    func openCamera(){
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            let myPickerController = UIImagePickerController()
            myPickerController.delegate = self
            myPickerController.sourceType = .camera
            present(myPickerController, animated: true, completion: nil)
        }
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        // To handle image
        if let image = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            
//            self.imagePickedBlock?(image)
        } else{
            print("Something went wrong in  image")
        }
    }
}
