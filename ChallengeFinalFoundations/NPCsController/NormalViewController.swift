//
//  NormalViewController.swift
//  ChallengeFinalFoundations
//
//  Created by Sophia Martinovski Menine on 24/07/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import Foundation
import UIKit
import FirebaseDatabase

class NormalViewController : UIViewController {
    
    @IBOutlet weak var nomeNormal: UITextField!
    @IBOutlet weak var filiacaoNormal: UITextField!
    @IBOutlet weak var localNormal: UITextField!
    @IBOutlet weak var habNormal: UITextView!
    @IBOutlet weak var histNormal: UITextView!
    @IBOutlet weak var extraNormal: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func criarNpcNormal(_ sender: Any) {
        
        var dictionary: [String: String] = [:]
        dictionary["nomeNormal"] = nomeNormal.text
        dictionary["filiacaoNormal"] = filiacaoNormal.text
        dictionary["localNormal"] = localNormal.text
        dictionary["habNormal"] = habNormal.text
        dictionary["histNormal"] = histNormal.text
        dictionary["extraNormal"] = extraNormal.text
        
        
        ref.childByAutoId().setValue(dictionary)
    }
}
