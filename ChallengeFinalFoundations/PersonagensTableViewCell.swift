//
//  PersonagensTableViewCell.swift
//  ChallengeFinalFoundations
//
//  Created by José Antônio Linch Burmann on 30/07/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import UIKit

class PersonagensTableViewCell: UITableViewCell {
    @IBOutlet weak var persoNome: UILabel!
    @IBOutlet weak var persoIdade: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
