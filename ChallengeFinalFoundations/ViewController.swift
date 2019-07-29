//
//  ViewController.swift
//  ChallengeFinalFoundations
//
//  Created by José Antônio Linch Burmann on 18/07/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import UIKit
import FirebaseDatabase
var ref = Database.database().reference()
class ViewController: UIViewController {
    @IBOutlet weak var nomeText: UITextField!
    @IBOutlet weak var historiaText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func enviarFunc(_ sender: Any) {
    }
    @IBAction func nomeFunc(_ sender: Any) {
    ref.childByAutoId()
    }
    

}
