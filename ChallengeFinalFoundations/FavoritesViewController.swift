//
//  FavoritesViewController.swift
//  ChallengeFinalFoundations
//
//  Created by Denise Maliska Guimarães  on 29/07/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import UIKit

class SalasFav{
    var nomeSala: String
    var isMestre: String
    init(nomeSalaText: String, isMestreText: String){
        nomeSala = nomeSalaText
        isMestre = isMestreText
    }
}
class FavoritesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return salas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "favoriteCell", for: indexPath) as? Favorites else { fatalError() }
        cell.nomeFavoritos.text = salas[indexPath.row].nomeSala
        cell.mestreFavoritos.text = salas[indexPath.row].isMestre
        return cell
    }
    @IBOutlet weak var tableViewFavorites: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewFavorites.delegate = self
        tableViewFavorites.dataSource = self
        loadSalas()
        DispatchQueue.main.async {
            self.tableViewFavorites.reloadData()
        }
        // Do any additional setup after loading the view.
    }
    var salas = [SalasFav]()
    func loadSalas() {
        ref.child("Usuarios").child("juze").child("salas").observe(.childAdded) { (snapshot) in
            print("XYZ")
            if let dict = snapshot.value as? [String: Any]{
                let nomeSalaText = dict["nome"] as! String
                let isMestreText = dict["mestre"] as! String
                let sala = SalasFav(nomeSalaText: nomeSalaText, isMestreText: isMestreText)
                self.salas.append(sala)
                DispatchQueue.main.async {
                    self.tableViewFavorites.reloadData()
                }
            }
        }
}
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        _ = salas[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "favoritosSegue", sender: indexPath)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let nextVC = segue.destination as? EntradaSalaViewController, let indexPath = sender as? IndexPath {
            nextVC.room = salas[indexPath.row]
        }
    }
}
