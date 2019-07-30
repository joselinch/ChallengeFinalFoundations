//
//  QuestViewController.swift
//  ChallengeFinalFoundations
//
//  Created by Sophia Martinovski Menine on 24/07/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import UIKit

class QuestViewController: UIViewController {
    
    @IBOutlet weak var ideiaQuest: UITextView!
    @IBOutlet weak var extraQuest: UITextView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func criarQuest(_ sender: Any) {
        
        var dictionary: [String: String] = [:]
        dictionary["ideiaQuest"] = ideiaQuest.text
        dictionary["extraQuest"] = extraQuest.text
       
        
        ref.childByAutoId().setValue(dictionary)
        
        
        
    }
    
    

}
