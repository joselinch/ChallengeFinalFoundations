//
//  FichaPersonagemViewController.swift
//  ChallengeFinalFoundations
//
//  Created by José Antônio Linch Burmann on 24/07/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import UIKit

class FichaPersonagemViewController: UIViewController {
    @IBOutlet weak var nomePers: UITextField!
    @IBOutlet weak var racaPers: UITextField!
    @IBOutlet weak var nivelPers: UITextField!
    @IBOutlet weak var classePers: UITextField!
    @IBOutlet weak var motivacaoPers: UITextField!
    @IBOutlet weak var forca1Pers: UITextField!
    @IBOutlet weak var forca2Pers: UITextField!
    @IBOutlet weak var agilidade1Pers: UITextField!
    @IBOutlet weak var agilidade2Pers: UITextField!
    @IBOutlet weak var inteligencia1Pers: UITextField!
    @IBOutlet weak var inteligencia2Pers: UITextField!
    @IBOutlet weak var vontade1Pers: UITextField!
    @IBOutlet weak var vontade2Pers: UITextField!
    @IBOutlet weak var defesaPers: UITextField!
    @IBOutlet weak var ptvidaMax: UITextField!
    @IBOutlet weak var ptvidaAtual: UITextField!
    @IBOutlet weak var ptmanaMax: UITextField!
    @IBOutlet weak var ptmanaAtual: UITextField!
    @IBOutlet weak var textHabil: UITextView!
    @IBOutlet weak var textEquip: UITextView!
    
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

    @IBAction func enviarButton(_ sender: Any) {
        // isso será alterado
        var dictionary: [String: String] = [:]
        dictionary["namePerson"] = nomePers.text
        dictionary["racaPers"] = racaPers.text
        dictionary["nivelPers"] = nivelPers.text
        dictionary["classePers"] = classePers.text
        dictionary["motivacaoPers"] = motivacaoPers.text
        dictionary["forca1Pers"] = forca1Pers.text
        dictionary["forca2Pers"] = forca2Pers.text
        dictionary["agilidade1Pers"] = agilidade1Pers.text
        dictionary["agilidade2Pers"] = agilidade2Pers.text
        dictionary["inteligencia1Pers"] = inteligencia1Pers.text
        dictionary["inteligencia2Pers"] = inteligencia2Pers.text
        dictionary["vontade1Pers"] = vontade1Pers.text
        dictionary["vontade2Pers"] = vontade2Pers.text
        dictionary["Defesa"] = defesaPers.text
        dictionary["PtsVidaMax"] = ptvidaMax.text
        dictionary["PtsVidaAtual"] = ptvidaAtual.text
        dictionary["PtsManaMax"] = ptmanaMax.text
        dictionary["PtsManaAtual"] = ptmanaAtual.text
        dictionary["Habilidades"] = textHabil.text
        dictionary["Equips"] = textEquip.text
        
        
        
        ref.childByAutoId().setValue(dictionary)
    }
    @IBAction func addFotoButton(_ sender: Any) {
        //codigo para buscar foto do personagem
    }
    
}
