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
    
    func configure(for state: LicensePlateItem) {
        stateName.text = state.stateName
    }

}
