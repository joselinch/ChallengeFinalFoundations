//
//  ViewController.swift
//  ChallengeFinalFoundations
//
//  Created by José Antônio Linch Burmann on 18/07/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import UIKit

struct Home {
    var imagem: UIImage
    var sala: String
    
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    
    
    @IBOutlet weak var TableView: UITableView!
    //array das informacoes
    
    
    let salas =  [
        Home(imagem: #imageLiteral(resourceName: "dungeons-and-dragons-themed-mobile-game-launches-today_86c3"), sala: "Dungeons and Dragons"),
        Home(imagem: #imageLiteral(resourceName: "1540307507309-DandD-Cover-Crop"), sala: "D&D Private"),
    ]
    

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return salas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let Cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SalasHomeTableViewCell
        
        // fazer o array da celula e manter retorno Cell
        
        let salasTotal = salas [indexPath.row]
        Cell.NomeSala.text = salasTotal.sala
        Cell.ImageSala.image = salasTotal.imagem
        return Cell
    
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    
 //       Busca.delegate = self
        TableView.delegate = self
        TableView.dataSource = self
        
//    }
    
    //func searchBarTextDidBeginEditing(_ searchBar: UISearchBar) {
       // searchActive = true;
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







