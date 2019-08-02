//
//  DiceViewController.swift
//  ChallengeFinalFoundations
//
//  Created by José Antônio Linch Burmann on 01/08/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import UIKit

class DiceViewController: UIViewController {

   
    @IBOutlet weak var qntDice20: UITextField!
    @IBOutlet weak var qntDice12: UITextField!
    @IBOutlet weak var qntDice100: UITextField!
    @IBOutlet weak var qntDice10: UITextField!
    @IBOutlet weak var qntDice8: UITextField!
    @IBOutlet weak var qntDice6: UITextField!
    @IBOutlet weak var qntDice4: UITextField!
    @IBOutlet weak var result7: UITextField!
    @IBOutlet weak var result6: UITextField!
    @IBOutlet weak var result5: UITextField!
    @IBOutlet weak var result4: UITextField!
    @IBOutlet weak var result3: UITextField!
    @IBOutlet weak var result2: UITextField!
    @IBOutlet weak var result1: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func rollDice4(_ sender: Any) {
        var d4 = Int.random(in: 1 ... 4)
//        result1.text = String(d4)
        let value = Int(qntDice4.text!)!
        result1.text = (value*d4).description
        
        
    }
    
    @IBAction func rollDice6(_ sender: Any) {
        var d6 = Int.random(in: 1 ... 6)
        //result2.text = String(d6)
        let value = Int(qntDice6.text!)!
        result2.text = (value*d6).description
    }
    
    @IBAction func rollDice8(_ sender: Any) {
        var d8 = Int.random(in: 1 ... 8)
        //result3.text = String(d8)
        let value = Int(qntDice8.text!)!
        result3.text = (value*d8).description
    }
    
    @IBAction func rollDice10(_ sender: Any) {
        var d10 = Int.random(in: 1 ... 10)
        //result4.text = String(d10)
        let value = Int(qntDice10.text!)!
        result4.text = (value*d10).description
    }
    
    @IBAction func rollDice100(_ sender: Any) {
        var d100 = Int.random(in: 1 ... 100)
        //result5.text = String(d100)
        let value = Int(qntDice100.text!)!
        result5.text = (value*d100).description
    }
    
    @IBAction func rollDice12(_ sender: Any) {
        var d12 = Int.random(in: 1 ... 12)
        //result6.text = String(d12)
        let value = Int(qntDice12.text!)!
        result6.text = (value*d12).description
    }
    
    @IBAction func rollDice20(_ sender: Any) {
        var d20 = Int.random(in: 1 ... 20)
        //result7.text = String(d20)
        let value = Int(qntDice20.text!)!
        result7.text = (value*d20).description
    }
}
