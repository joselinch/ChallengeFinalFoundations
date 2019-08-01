//
//  LogJogUsuarioViewController.swift
//  ChallengeFinalFoundations
//
//  Created by José Antônio Linch Burmann on 01/08/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import UIKit

class Historico{
    var acao: String
    var texto: String
    var resultado: String
    
    
    init(acaoText: String, textoText: String, resultadoText: String){
        acao = acaoText
        texto = textoText
        resultado = resultadoText
    }
}

class LogJogUsuarioViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var historicos = [Historico]()
    @IBOutlet weak var tableViewHistorico: UITableView!
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return historicos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellLogJog") as! LogJogTableViewCell
        cell.resultadoAcao.text = historicos[indexPath.row].resultado
        cell.tipoAcao.text = historicos[indexPath.row].acao
        cell.nomePersonagem.text = historicos[indexPath.row].texto
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewHistorico.dataSource = self
        tableViewHistorico.delegate = self
        loadLogs()
        tableViewHistorico.reloadData()
        // Do any additional setup after loading the view.
    }
    func loadLogs() {
        ref.child("Salas").child("salaModelo").child("jogabilidade").child("resultados").observe(.childAdded) { (snapshot) in
            print("XYZ")
            if let dict = snapshot.value as? [String: Any]{
                let acaoText = dict["tipoAcao"] as! String
                let textoText = dict["personagem"] as! String
                let resultadoText = dict["resultado"] as! String
                
                var historico = Historico(acaoText: acaoText, textoText: textoText, resultadoText: resultadoText)
                
                
                self.historicos.append(historico)
                DispatchQueue.main.async {
                self.tableViewHistorico.reloadData()
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
