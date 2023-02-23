//
//  ScoreCell.swift
//  LicensePlateGame
//
//  Created by Jaye Mondale on 1/17/23.
//  Copyright © 2023 5mConsult. All rights reserved.
//

import UIKit

class ScoreCell: UITableViewCell {

    @IBOutlet weak var scoreTotal: UILabel!
    @IBOutlet weak var totalStates: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
