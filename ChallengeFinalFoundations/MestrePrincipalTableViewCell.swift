//
//  MestrePrincipalTableViewCell.swift
//  ChallengeFinalFoundations
//
//  Created by José Antônio Linch Burmann on 01/08/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import UIKit

class MestrePrincipalTableViewCell: UITableViewCell {
    @IBOutlet weak var nome: UILabel!
    @IBOutlet weak var acao: UILabel!
    
    @IBOutlet weak var resultadoAcao: UITextView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
