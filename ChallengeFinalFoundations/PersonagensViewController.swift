//
//  PersonagensViewController.swift
//  ChallengeFinalFoundations
//
//  Created by José Antônio Linch Burmann on 30/07/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import UIKit



class PersonagensViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        _ = posts[indexPath.row]
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cellPers", for: indexPath) as? PersonagensTableViewCell else { fatalError() }
        cell.persoNome.text = posts[indexPath.row].caption
        cell.persoIdade.text = posts[indexPath.row].photoUrl
        return cell
    }
    
    var posts = [Post]()
    override func viewDidLoad() {
       
        
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        loadPosts()
        
        // Do any additional setup after loading the view.
    }
    
    func loadPosts() {
        ref.child("Usuarios").child("juze").child("personagens").observe(.childAdded) { (snapshot) in
            print("XYZ")
            if let dict = snapshot.value as? [String: Any]{
                let captionText = dict["nome"] as! String
                let photoUrlString = dict["sala"] as! String
                let post = Post(captionText: captionText, photoUrlString: photoUrlString)
                self.posts.append(post)
                print("Done")
                DispatchQueue.main.async {
                    self.tableView.reloadData()
                }
            }
        }
        
    }
    

    
    @IBOutlet weak var tableView: UITableView!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
