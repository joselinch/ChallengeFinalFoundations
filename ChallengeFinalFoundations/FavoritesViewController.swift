//
//  FavoritesViewController.swift
//  ChallengeFinalFoundations
//
//  Created by Denise Maliska Guimarães  on 29/07/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import UIKit

struct  favorites {
    var nameFavorites : String
    
    
}

class FavoritesViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    let favoritos =  [
    favorites(nameFavorites: "Sala 1")
    ]
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return  favoritos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let FavoritesCell = tableView.dequeueReusableCell(withIdentifier: "favoritecell", for: indexPath) as! Favorites
        let favorite = favoritos[indexPath.row]
        FavoritesCell.NameFavorites.text = favorite.nameFavorites
//        let salasFavorites = indexPath.row
//        FavoritesCell.NameFavorites.text = salasFavorites.map{ "\($0)" }.joined(separator: ", ")
        return FavoritesCell
        
    }
    
    @IBOutlet weak var Favorites: UITableView!
    
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

}
