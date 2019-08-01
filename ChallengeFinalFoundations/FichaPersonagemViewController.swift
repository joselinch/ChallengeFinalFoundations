//
//  FichaPersonagemViewController.swift
//  ChallengeFinalFoundations
//
//  Created by José Antônio Linch Burmann on 24/07/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import UIKit

var nomePersonagem = ""
var racaPersonagem = ""
var classePersonagem = ""
var nivelPersonagem = ""
var motivacaoPersonagem = ""
var forca1Personagem = ""
var forca2Personagem = ""
var agilidade1Personagem = ""
var agilidade2Personagem = ""
var inteligencia1Personagem = ""
var inteligencia2Personagem = ""
var vontade1Personagem = ""
var vontade2Personagem = ""
var ptsvidaMaxPersonagem = ""
var ptsvidaAtualPersonagem = ""
var ptsmanaMaxPersonagem = ""
var ptsmanaAtualPersonagem = ""
var defesaPersonagem = ""
var habilPersonagem = ""
var equipPersonagem = ""

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
        nomePersonagem = nomePers.text!
        racaPersonagem = racaPers.text!
        nivelPersonagem = nivelPers.text!
        classePersonagem = classePers.text!
        motivacaoPersonagem = motivacaoPers.text!
        forca1Personagem = forca1Pers.text!
        forca2Personagem = forca2Pers.text!
        agilidade1Personagem = agilidade1Pers.text!
        agilidade2Personagem = agilidade2Pers.text!
        inteligencia1Personagem = inteligencia1Pers.text!
        inteligencia2Personagem = inteligencia2Pers.text!
        vontade1Personagem = vontade1Pers.text!
        vontade2Personagem = vontade2Pers.text!
        defesaPersonagem = defesaPers.text!
        ptsvidaMaxPersonagem = ptvidaMax.text!
        ptsvidaAtualPersonagem = ptvidaAtual.text!
        ptsmanaMaxPersonagem = ptmanaMax.text!
        ptsmanaAtualPersonagem = ptmanaAtual.text!
        habilPersonagem = textHabil.text!
        equipPersonagem = textEquip.text!
        
        print(nomePersonagem)
        
        var dictionary: [String: String] = [:]
        dictionary["namePerson"] = nomePersonagem
        dictionary["racaPers"] = racaPersonagem
        dictionary["nivelPers"] = nivelPersonagem
        dictionary["classePers"] = classePersonagem
        dictionary["motivacaoPers"] = motivacaoPersonagem
        dictionary["forca1Pers"] = forca1Personagem
        dictionary["forca2Pers"] = forca2Personagem
        dictionary["agilidade1Pers"] = agilidade1Personagem
        dictionary["agilidade2Pers"] = agilidade2Personagem
        dictionary["inteligencia1Pers"] = inteligencia1Personagem
        dictionary["inteligencia2Pers"] = inteligencia2Personagem
        dictionary["vontade1Pers"] = vontade1Personagem
        dictionary["vontade2Pers"] = vontade2Personagem
        dictionary["Defesa"] = defesaPersonagem
        dictionary["PtsVidaMax"] = ptsvidaMaxPersonagem
        dictionary["PtsVidaAtual"] = ptsvidaAtualPersonagem
        dictionary["PtsManaMax"] = ptsmanaMaxPersonagem
        dictionary["PtsManaAtual"] = ptsmanaAtualPersonagem
        dictionary["Habilidades"] = habilPersonagem
        dictionary["Equips"] = equipPersonagem
        ref.child("Salas").child("LOL de mesa").child("personagens").child(nomePersonagem).setValue(dictionary)
    }
    @IBAction func addFotoButton(_ sender: Any) {
        //codigo para buscar foto do personagem
    }
    
}
