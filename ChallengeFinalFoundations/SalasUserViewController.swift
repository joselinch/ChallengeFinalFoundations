//
//  SalasUserViewController.swift
//  ChallengeFinalFoundations
//
//  Created by José Antônio Linch Burmann on 31/07/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import UIKit

class SalasUser{
    var nomeSala: String
    var isMestre: String
    
    init(nomeSalaText: String, isMestreText: String){
        nomeSala = nomeSalaText
        isMestre = isMestreText
    }
}

class SalasUserViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        _ = salas[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return salas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cellSalas", for: indexPath) as? SalasUserTableViewCell else { fatalError() }
        cell.nomeSalaUser.text = salas[indexPath.row].nomeSala
        cell.isMestreUser.text = salas[indexPath.row].isMestre
        return cell
    }
    
    @IBOutlet weak var tableViewUser: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewUser.delegate = self
        tableViewUser.dataSource = self
        loadSalas()
        DispatchQueue.main.async {
            self.tableViewUser.reloadData()
        }
        // Do any additional setup after loading the view.
    }
    var salas = [SalasUser]()
    func loadSalas() {
        ref.child("Usuarios").child("juze").child("salas").observe(.childAdded) { (snapshot) in
            print("XYZ")
            if let dict = snapshot.value as? [String: Any]{
                let nomeSalaText = dict["nome"] as! String
                let isMestreText = dict["mestre"] as! String
                let sala = SalasUser(nomeSalaText: nomeSalaText, isMestreText: isMestreText)
                self.salas.append(sala)
                DispatchQueue.main.async {
                self.tableViewUser.reloadData()
                }
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
