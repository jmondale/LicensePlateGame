//
//  ViewController.swift
//  LicensePlateGame
//
//  Created by Jaye Mondale on 2/18/16.
//  Copyright © 2016 5mConsult. All rights reserved.
//

import UIKit

class LicensePlateViewController: UITableViewController, UIPopoverControllerDelegate, StateCellDelegate {

    var dataModel: DataModel?
    var state: States
    var statesFoundCount: Int = 0
    
    required init?(coder aDecoder: NSCoder) {
        state = States()!
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.isNavigationBarHidden =  false
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.title = "License Plates"
        
        self.navigationController!.navigationBar.barStyle = .black
        self.navigationController!.navigationBar.isTranslucent = false
        self.navigationController!.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont(name: "Arial", size: 25.0)!, .foregroundColor: UIColor.white]
        
        let scoreCell = UINib(nibName: "ScoreCell", bundle: nil)
        tableView.register(scoreCell, forCellReuseIdentifier: "ScoreCell")
        
        let stateCell = UINib(nibName: "StateCell", bundle: nil)
        tableView.register(stateCell, forCellReuseIdentifier: "StateCell")
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let dataModel = dataModel, let count = dataModel.states?.count else { return 0 }
        return count+1
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            let cell = tableView.dequeueReusableCell(withIdentifier: "ScoreCell", for: indexPath) as! ScoreCell
            // add border and color
            cell.backgroundColor = UIColor.systemGray2
            cell.layer.borderColor = UIColor.black.cgColor
            cell.layer.borderWidth = 1
            cell.layer.cornerRadius = 8
            cell.clipsToBounds = true
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "StateCell", for: indexPath) as! StateCell
            // add border and color
            cell.backgroundColor = UIColor.systemGray2
            cell.layer.borderColor = UIColor.black.cgColor
            cell.layer.borderWidth = 1
            cell.layer.cornerRadius = 8
            cell.clipsToBounds = true
            
            if let item = dataModel?.states?[(indexPath as NSIndexPath).row-1] {
                cell.configure(for: item)
                cell.delegate = self
                cell.indexPath = indexPath
                
                tableView.backgroundColor = UIColor.black
                
                configureCheckmarkForCell(cell, withLicensePlateItem: item)
                return cell
            }
        }
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            UserDefaults.standard.set((indexPath as NSIndexPath).row, forKey: "LicensePlateIndex")
            if let item = dataModel?.states?[(indexPath as NSIndexPath).row] {
                item.toggleChecked()
                configureCheckmarkForCell(cell, withLicensePlateItem: item)
                if let states = dataModel?.states {
                    for state in states {
                        if state.checked {
                            statesFoundCount += 1
                            print(statesFoundCount)
                            print(state.stateName)
                        }
                    }
                }
            }
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        dataModel?.saveLicensePlateItem()
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if indexPath.row == 0 {
            return 100.0
        }
        return 50
    }
    
    func configureCheckmarkForCell(_ cell: UITableViewCell, withLicensePlateItem item: LicensePlateItem) {
        let cell = cell as! StateCell
        let checkImage = cell.checkmarkImage
        if item.checked {
            checkImage?.isHidden = false
        } else {
            checkImage?.isHidden = true
        }
    }
    
    func configureTextForCell(_ cell: UITableViewCell, withLicensePlateItem item: LicensePlateItem) {
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = item.stateName
    }
    
    func didClickOnCellAtIndex(at indexPath: IndexPath) {
        let row = (indexPath as NSIndexPath).row
        guard let item = dataModel?.states?[row] else { return }
        
        let stateViewNavigationController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "StateDetailNavigationController")
        let stateViewController = stateViewNavigationController.children[0] as? StateDetailViewController
        stateViewController?.item = item
        
        stateViewNavigationController.modalPresentationStyle = .popover
        stateViewNavigationController.modalTransitionStyle = .crossDissolve
        
        let contentSize: CGSize = CGSize(width: self.view.frame.size.width * 0.9, height: self.view.frame.size.height * 0.5)
        stateViewNavigationController.preferredContentSize = contentSize
        
        let popoverController = stateViewNavigationController.popoverPresentationController
        popoverController?.delegate = self
        popoverController?.sourceView = self.view
        popoverController?.sourceRect = self.view.bounds
        popoverController?.permittedArrowDirections = []
        
        present(stateViewNavigationController, animated: true, completion: nil)
    }
}

extension LicensePlateViewController: UIPopoverPresentationControllerDelegate {
    func adaptivePresentationStyle(for controller: UIPresentationController) -> UIModalPresentationStyle {
        return .none
    }
    
    func adaptivePresentationStyle(for controller: UIPresentationController, traitCollection: UITraitCollection) -> UIModalPresentationStyle {
        return .none
    }
}

