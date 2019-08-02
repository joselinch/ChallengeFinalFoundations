//
//  MestrePrincipalViewController.swift
//  ChallengeFinalFoundations
//
//  Created by José Antônio Linch Burmann on 01/08/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import UIKit
class ResultadosMestre{
    var acao: String
    var texto: String
    var resultado: String
    
    
    init(acaoText: String, textoText: String, resultadoText: String){
        acao = acaoText
        texto = textoText
        resultado = resultadoText
    }
}
class MestrePrincipalViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var resultados = [ResultadosMestre]()
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellPrincMaster") as! MestrePrincipalTableViewCell
        cell.resultadoAcao.text = resultados[indexPath.row].resultado
        cell.acao.text = resultados[indexPath.row].acao
        cell.nome.text = resultados[indexPath.row].texto
        return cell
    }
    @IBOutlet weak var descricaoPrincial: UITextView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableViewPrincipalMestre.dataSource = self
        tableViewPrincipalMestre.delegate = self
        loadResultados()
        tableViewPrincipalMestre.reloadData()
        // Do any additional setup after loading the view.
    }
    @IBAction func alterarButton(_ sender: Any) {
        ref.child("Salas").child(nomeSalaEntrar).child("jogabilidade").child("descricao").setValue(self.descricaoPrincial.text)
    }
    
    @IBOutlet weak var tableViewPrincipalMestre: UITableView!
    func loadResultados(){
        ref.child("Salas").child(nomeSalaEntrar).child("jogabilidade").child("resultados").observe(.childAdded) { (snapshot) in
            print("XYZ")
            if let dict = snapshot.value as? [String: Any]{
                let acaoText = dict["tipoAcao"] as! String
                let textoText = dict["personagem"] as! String
                let resultadoText = dict["resultado"] as! String
                
                var resultado = ResultadosMestre(acaoText: acaoText, textoText: textoText, resultadoText: resultadoText)
                
                
                self.resultados.append(resultado)
                DispatchQueue.main.async {
                    self.tableViewPrincipalMestre.reloadData()
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
}
