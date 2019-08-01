//
//  JogabilidadeInicialViewController.swift
//  ChallengeFinalFoundations
//
//  Created by José Antônio Linch Burmann on 31/07/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import UIKit

class JogabilidadeInicialViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        ref.child("Salas").child("salaModelo").child("jogabilidade").observe(.value) { (snapshot) in
            print("XYZ")
            if let dict = snapshot.value as? [String: Any]{
                self.descricao.text = dict["descricao"] as! String
                print(self.descricao.text)
            }
        }
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var descricao: UITextView!
    @IBOutlet weak var informacaoParaMestre: UITextView!
    
    @IBAction func enviarAoMestre(_ sender: Any) {
        var dictionary: [String: String] = [:]
        dictionary["resultado"] = informacaoParaMestre.text
        dictionary["tipoAcao"] = "Envio de texto"
        dictionary["personagem"] = "Fulaninho"
        ref.child("Salas").child("salaModelo").child("jogabilidade").child("resultados").childByAutoId().setValue(dictionary)
        ref.child("Salas").child("salaModelo").child("jogabilidade").child("acoesLog").childByAutoId().setValue(dictionary)
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
