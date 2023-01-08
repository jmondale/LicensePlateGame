//
//  StateDetailViewController.swift
//  LicensePlateGame
//
//  Created by Jaye Mondale on 3/10/16.
//  Copyright © 2016 5mConsult. All rights reserved.
//

import UIKit

class StateDetailViewController: UIViewController {
    
    @IBOutlet var lblStateName: UILabel!
    @IBOutlet var lblStateCapital: UILabel!
    @IBOutlet weak var stateFlagImage: UIImageView!
    @IBOutlet weak var lblYearEstablished: UILabel!
    
    @IBAction func doneBtn(_ sender: UIBarButtonItem) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBOutlet weak var lblStateOrder: UILabel!
    @IBOutlet weak var lblYearSettled: UILabel!
    
    var item: LicensePlateItem!
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let stateInfo = item {
            lblStateName.text = stateInfo.stateName
            lblStateCapital.text = stateInfo.stateCapital
            lblYearEstablished.text = stateInfo.yearEstablished
            lblYearSettled.text = stateInfo.yearSettled
            lblStateOrder.text = stateInfo.stateOrder
            
            let stateFlagName = ("\(stateInfo.stateFlagImageName).png").lowercased()
            let image = UIImage(named:stateFlagName)
            self.stateFlagImage.image = image
        }
        
        view.backgroundColor = .lightGray
    }
}
