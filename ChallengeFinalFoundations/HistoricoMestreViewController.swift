//
//  HistoricoMestreViewController.swift
//  ChallengeFinalFoundations
//
//  Created by José Antônio Linch Burmann on 01/08/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import UIKit
class HistoricoMestre {
    var acao: String
    var nome: String
    var resultado: String
    
    init(acaoString: String, nomeString: String, resultadoString: String) {
        acao = acaoString
        nome = nomeString
        resultado = resultadoString
    }
}
class HistoricoMestreViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var historicos = [HistoricoMestre]()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return historicos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "historicoMestreLog") as! HistoricoMestreTableViewCell
        cell.resultadoText.text = historicos[indexPath.row].resultado
        cell.acaoText.text = historicos[indexPath.row].acao
        cell.nomeText.text = historicos[indexPath.row].nome
        return cell
    }
    
    @IBOutlet weak var tableViewMestreHistorico: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewMestreHistorico.dataSource = self
        tableViewMestreHistorico.delegate = self
        loadLogs()
        tableViewMestreHistorico.reloadData()
        // Do any additional setup after loading the view.
    }
    func loadLogs() {
        ref.child("Salas").child(nomeSalaEntrar).child("jogabilidade").child("resultados").observe(.childAdded) { (snapshot) in
            print("XYZ")
            if let dict = snapshot.value as? [String: Any]{
                let acaoTextString = dict["tipoAcao"] as! String
                let textoTextString = dict["personagem"] as! String
                let resultadoTextString = dict["resultado"] as! String
                
                var historico = HistoricoMestre(acaoString: acaoTextString, nomeString: textoTextString, resultadoString: resultadoTextString)
                
                self.historicos.append(historico)
                DispatchQueue.main.async {
                    self.tableViewMestreHistorico.reloadData()
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
