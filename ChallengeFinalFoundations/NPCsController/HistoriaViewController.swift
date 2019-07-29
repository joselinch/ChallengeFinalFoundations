//
//  HistoriaViewController.swift
//  ChallengeFinalFoundations
//
//  Created by Sophia Martinovski Menine on 24/07/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import UIKit

class HistoriaViewController: UIViewController {
    
    @IBOutlet weak var histTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    
    @IBAction func salvarHist(_ sender: Any) {
        
        var dictionary: [String: String] = [:]
        dictionary["histTextView"] = histTextView.text
        
        ref.childByAutoId().setValue(dictionary)
    }
    
   

}
