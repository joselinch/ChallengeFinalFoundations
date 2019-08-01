//
//  SalasUserTableViewCell.swift
//  ChallengeFinalFoundations
//
//  Created by José Antônio Linch Burmann on 31/07/19.
//  Copyright © 2019 José Antônio Linch Burmann. All rights reserved.
//

import UIKit

class SalasUserTableViewCell: UITableViewCell {
    @IBOutlet weak var nomeSalaUser: UILabel!
    @IBOutlet weak var isMestreUser: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
