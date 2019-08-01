//
//  PersonagensJogoTableViewCell.swift
//  ChallengeFinalFoundations
//
//  Created by José Antônio Linch Burmann on 31/07/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import UIKit

class PersonagensJogoTableViewCell: UITableViewCell {
    @IBOutlet var nome: UILabel!
    @IBOutlet var tipo: UILabel!
    @IBOutlet var nomeUser: UILabel!
    @IBOutlet var imagePerson: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }
    

}
