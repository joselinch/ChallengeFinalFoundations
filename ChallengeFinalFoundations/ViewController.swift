//
//  ViewController.swift
//  ChallengeFinalFoundations
//
//  Created by José Antônio Linch Burmann on 18/07/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import UIKit
import Firebase

//class Personagem {
//    let Defesa: String
//    let Equips: String
//    let Habilidades: String
//    let PtsManaAtual: String
//    let Defesa: String
//    let Defesa: String
//    let Defesa: String
//    let Defesa: String
//    let Defesa: String
//    let Defesa: String
//    let Defesa: String
//    let Defesa: String
//    let Defesa: String
//    let Defesa: String
//    let Defesa: String
//    let Defesa: String
//    let Defesa: String
//    let Defesa: String
//    let Defesa: String
//    let Defesa: String
//    let Defesa: String
//    let Defesa: String
//    let Defesa: String
//    
//}
class Post{
    var caption: String
    var photoUrl: String
    
    init(captionText: String, photoUrlString: String){
        caption = captionText
        photoUrl = photoUrlString
    }
}
var ref = Database.database().reference()

struct Home {
    var imagem: UIImage
    var sala: String
}
var userID = ""
class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        _ = salas[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    @IBOutlet weak var TableView: UITableView!
    //array das informacoes
    
    
    var salas =  [Post]()
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return salas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SalasHomeTableViewCell
        cell.NomeSala.text = salas[indexPath.row].caption
        cell.mestreSala.text = salas[indexPath.row].photoUrl
        // fazer o array da celula e manter retorno Cell
        return cell
    
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        if Auth.auth().currentUser != nil {
            userID = String(Auth.auth().currentUser!.uid)
            print(userID)
        } else {
            print("Não conectado")
        }
    
 //       Busca.delegate = self
        TableView.delegate = self
        TableView.dataSource = self
        TableView.reloadData()
        loadSalas()
        
//    }
    
    //func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
       // searchActive = true;
    }
        func loadSalas() {
            ref.child("Usuarios").child("juze").child("salas").observe(.childAdded) { (snapshot) in
                print("XYZ")
                if let dict = snapshot.value as? [String: Any]{
                    let captionText = dict["nome"] as! String
                    let photoUrlString = dict["mestre"] as! String
                    let sala = Post(captionText: captionText, photoUrlString: photoUrlString)
                    self.salas.append(sala)
                    DispatchQueue.main.async {
                        self.TableView.reloadData()
                    }
                }
            }
        }
    
   // func searchBarTextDidEndEditing(_ searchBar: UISearchBar) {
   //     searchActive = false;
    
    
    //func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
     //   searchActive = false;
    
    
   // func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
    //    searchActive = false;
    
    
 //   func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
    //    filtered = Home( { (searchText) --> Bool; int
       //     let tmp: NSString = searchText
        //    let range = tmp.range(of: searchText, options: NSString.CompareOptions.CaseInsensitiveSearch)
       //     return range.location != NSNotFound
    
        
    //    if(filtered.count == 0) {
          //  searchActive = false;
    //    } else {
    //        searchActive = true;
    
     //   self.TableView.reloadData()
          
}







