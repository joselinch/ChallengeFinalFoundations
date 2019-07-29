//
//  InimigoViewController.swift
//  ChallengeFinalFoundations
//
//  Created by Sophia Martinovski Menine on 24/07/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import Foundation
import UIKit
class InimigoViewController : UIViewController {
    
    @IBOutlet weak var nomeInimigo: UITextField!
    @IBOutlet weak var racaInimigo: UITextField!
    @IBOutlet weak var classeInimigo: UITextField!
    @IBOutlet weak var nivelInimigo: UITextField!
    @IBOutlet weak var pv1: UITextField!
    @IBOutlet weak var pv2: UITextField!
    @IBOutlet weak var fa1: UITextField!
    @IBOutlet weak var fa2: UITextField!
    @IBOutlet weak var mp1: UITextField!
    @IBOutlet weak var mp2: UITextField!
    @IBOutlet weak var fd1: UITextField!
    @IBOutlet weak var fd2: UITextField!
    @IBOutlet weak var descInimigo: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func criarInimigo(_ sender: Any) {
        
        var dictionary: [String: String] = [:]
        dictionary["nomeInimigo"] = nomeInimigo.text
        dictionary["racaInimigo"] = racaInimigo.text
        dictionary["classeInimigo"] = classeInimigo.text
        dictionary["nivelInimigo"] = nivelInimigo.text
        dictionary["pv1"] = pv1.text
        dictionary["pv2"] = pv2.text
        dictionary["fa1"] = fa1.text
        dictionary["fa2"] = fa2.text
        dictionary["mp1"] = mp1.text
        dictionary["mp2"] = mp2.text
        dictionary["fd1"] = fd1.text
        dictionary["fd2"] = fd2.text
        dictionary["descInimigo"] = descInimigo.text
        
        
        
        ref.childByAutoId().setValue(dictionary)
    }
    
}

