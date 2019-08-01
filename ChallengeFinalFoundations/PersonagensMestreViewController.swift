//
//  PersonagensMestreViewController.swift
//  ChallengeFinalFoundations
//
//  Created by José Antônio Linch Burmann on 01/08/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import UIKit

class PersonagensMestreViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personTable") as! PersonagensMestreTableViewCell
        cell.nomeText.text = posts[indexPath.row].caption
        cell.tipoText.text = posts[indexPath.row].photoUrl
        
        return cell
    }
    var posts = [Post]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewPersonagensMestre.dataSource = self
        tableViewPersonagensMestre.delegate = self
        loadPersons()
        tableViewPersonagensMestre.reloadData()
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var tableViewPersonagensMestre: UITableView!
    func loadPersons() {
        ref.child("Salas").child("salaModelo").child("personagens").observe(.childAdded) { (snapshot) in
            print("XYZ")
            if let dict = snapshot.value as? [String: Any]{
                let captionText = dict["namePerson"] as! String
                let photoUrlString = dict["tipo"] as! String
                let post = Post(captionText: captionText, photoUrlString: photoUrlString)
                self.posts.append(post)
                DispatchQueue.main.async {
                    self.tableViewPersonagensMestre.reloadData()
                }
            }
        }
}
}
