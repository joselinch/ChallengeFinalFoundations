//
//  HistoricoMestreTableViewCell.swift
//  ChallengeFinalFoundations
//
//  Created by José Antônio Linch Burmann on 01/08/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import UIKit

class HistoricoMestreTableViewCell: UITableViewCell {
    @IBOutlet weak var nomeText: UILabel!
    @IBOutlet weak var acaoText: UILabel!
    @IBOutlet weak var resultadoText: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
