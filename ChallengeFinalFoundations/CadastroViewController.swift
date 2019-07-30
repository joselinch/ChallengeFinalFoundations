//
//  CadastroViewController.swift
//  ChallengeFinalFoundations
//
//  Created by Bianca de Moura Pasetto on 24/07/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import UIKit
import Firebase

class CadastroViewController: UIViewController {
    
    @IBOutlet weak var nomeUserNovo: UITextField!
    @IBOutlet weak var emailUserNovo: UITextField!
    @IBOutlet weak var senhaUserNovo: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func userCadastrar(_ sender: Any) {
        print ("Cadastro realizado")
        //esse codigo é para verificar se todos os campos estao preenchidos
        if (nomeUserNovo.text?.isEmpty)! || //tá errada alguma coisa
            (emailUserNovo.text?.isEmpty)! ||
            (senhaUserNovo.text?.isEmpty)!
        {
            //colocar mensagem de erro com print mexxxmo. No video, ele cria uma f só para chamar os erros.
            //return
            print ("deu ruim")
            
        } else {
            
            Auth.auth().createUser(withEmail: emailUserNovo.text ?? "", password: senhaUserNovo.text ?? "") { result, error in
                print("Feito")
                if let error = error {
                    print(error)
                } else {
                    print("Deu Certo!")
//                    self.dismiss(animated: true, completion: nil)
                    self.navigationController?.popViewController(animated: true)
                }
                
            }
            
        }
    }
}
