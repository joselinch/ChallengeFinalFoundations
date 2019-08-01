//
//  EntradaSalaViewController.swift
//  ChallengeFinalFoundations
//
//  Created by José Antônio Linch Burmann on 25/07/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import UIKit
//class SalasUser{
//    var nomeSala: String
//    var isMestre: String
//
//    init(nomeSalaText: String, isMestreText: String){
//        nomeSala = nomeSalaText
//        isMestre = isMestreText
//    }
//}
class DadosSalas {
    var nome: String
    var historia: String
    var mapa: UIImage
    var mestre: String
    var personagens: [String]
    var quests: [String]
    init(nomeSalaText: String, historiaSalaText: String, mapaLink: UIImage, mestreSala: String, personagensNome: [String], questsNome: [String]) {
        nome = nomeSalaText
        historia = historiaSalaText
        mapa = mapaLink
        mestre = mestreSala
        personagens = personagensNome
        quests = questsNome
    }
}

class EntradaSalaViewController: UIViewController {
    @IBOutlet weak var mapaPrincipal: UIImageView!
    @IBOutlet weak var textHistoriaSala: UITextView!
    @IBOutlet weak var player1Sala: UIImageView!
    @IBOutlet weak var player2Sala: UIImageView!
    @IBOutlet weak var imageMestre: UIImageView!
    @IBOutlet weak var nomeSala: UILabel!
    var nome = ""
    var room: SalasFav?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nome = room!.nomeSala
        print(nome)
        loadSala()
        //        textHistoriaSala.text = room?.nomeSala
        // Do any additional setup after loading the view.
    }
    @IBAction func entrarSala(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Jogabilidade", bundle: nil)
        
        let viewControllerIdentifier = true ? "Master" : "NoMaster"
        let nextVC = storyboard.instantiateViewController(withIdentifier: viewControllerIdentifier)
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let window = appDelegate.window!
        
        UIView.transition(with: window, duration: 1, options: .layoutSubviews, animations: {
            window.rootViewController = nextVC
        }, completion: nil)
        
    }
    func loadSala(){
        ref.child("Salas").child(String(nome)).observe(.value) { (snapshot) in
            print("XYZ")
            if let dict = snapshot.value as? [String: Any]{
                self.nomeSala.text = dict["nomeSala"] as? String
                self.textHistoriaSala.text = dict["historiaSala"] as? String
            }
        }
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
