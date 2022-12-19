//
//  StateCell.swift
//  LicensePlateGame
//
//  Created by Jaye on 12/12/16.
//  Copyright © 2016 5mConsult. All rights reserved.
//

import UIKit

protocol StateCellDelegate: AnyObject {
    func didClickOnCellAtIndex(at indexPath:IndexPath)
}

class StateCell: UITableViewCell {
    var delegate:StateCellDelegate!
    var indexPath:IndexPath!
    
    @IBOutlet weak var checkmarkImage: UIImageView!
    @IBOutlet weak var btnDetail: UIButton!
    @IBOutlet weak var stateName: UILabel!

    @IBAction func stateDetails(_ sender: UIButton) {
        self.delegate?.didClickOnCellAtIndex(at: indexPath)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configure(for state: LicensePlateItem) {
        //self.backgroundColor = UIColor(red: 20/255, green: 160/255, blue: 160/255, alpha: 1)
        //self.backgroundColor = UIColor(red: 234/255, green: 230/255, blue: 0/255, alpha: 1.0)
        //self.backgroundColor = UIColor(red: 249/255, green: 247/255, blue: 87/255, alpha: 1.0) 
        stateName.text = state.stateName
    }

}
