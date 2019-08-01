//
//  LoginViewController.swift
//  
//
//  Created by Bianca de Moura Pasetto on 23/07/19.
//

import UIKit
import Firebase
import GoogleSignIn


class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var senhaText: UITextField!
    @IBAction func google(_ sender: Any) {
    }
    
    
    override func viewDidLoad() {
        
            super.viewDidLoad()
        
        let google = GIDSignInButton()
            //var user = "admin"
            //var senha = "admin"
            
        }
    @IBAction func userLogin(_ sender: Any) {
        print ("Login")
        
        Auth.auth().signIn(withEmail: emailText.text ?? "", password: senhaText.text ?? "") { result, error in
            print("+++++")
            if let error = error {
                print(error)
            } else if let result = result {
                print(result)
                guard let window = UIApplication.shared.keyWindow else {
                    fatalError("There should be a window")
                }
                guard let rootViewController = window.rootViewController else {
                    fatalError("There should be a rootViewController")
                }
                let homeStoryboard = UIStoryboard(name: "Home", bundle: nil)
                let homeViewController = homeStoryboard.instantiateViewController(withIdentifier: "InitialHomeTabController")
                
                UIView.transition(with: window, duration: 0.3, options: .allowAnimatedContent, animations: {window.rootViewController = homeViewController}, completion: {completed in})
            }
            
        }
    }
    @IBAction func userNovo(_ sender: Any) {
        print("Novo usuario")
        
        // esse código para quando clicar em NOVO USR ir para a tela de cadastro.
        //Não está funcionando
//        let LoginViewController =
//        self.storyboard?.instantiateViewController(withIdentifier:LoginViewController) as! cadastro
//
//        self.present (LoginViewController, animated: true)
//    }
        
     }
   }


    




