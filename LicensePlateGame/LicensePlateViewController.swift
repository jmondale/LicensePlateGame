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
    var state : States
    
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
        
        let cellNib = UINib(nibName: "StateCell", bundle: nil)
        tableView.register(cellNib, forCellReuseIdentifier: "StateCell")
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let dataModel = dataModel else { return 0 }
    
        dataModel.states = state.items
        
        return dataModel.states?.count ?? 0
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "StateCell", for: indexPath) as! StateCell
        // add border and color
        cell.backgroundColor = UIColor.systemGray2
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 8
        cell.clipsToBounds = true
        
        if let item = dataModel?.states?[(indexPath as NSIndexPath).row] {
            cell.configure(for: item)
            cell.delegate = self
            cell.indexPath = indexPath
            
            tableView.backgroundColor = UIColor.black
            
            configureCheckmarkForCell(cell, withLicensePlateItem: item)
            return cell
        }
        return UITableViewCell()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            UserDefaults.standard.set((indexPath as NSIndexPath).row, forKey: "LicensePlateIndex")
            if let item = dataModel?.states?[(indexPath as NSIndexPath).row]{
                item.toggleChecked()
                configureCheckmarkForCell(cell, withLicensePlateItem: item)
            }
        }
        
        tableView.deselectRow(at: indexPath, animated: true)
        dataModel?.saveLicensePlateItem()
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
        
        guard let rootviewController = view.window?.rootViewController else { return }
        guard let rootView = rootviewController.view else { return }
        
        stateViewNavigationController.modalPresentationStyle = .pageSheet
        let contentSize: CGSize = CGSize(width: rootView.frame.size.width * 0.9, height: rootView.frame.size.height * 0.5)
        stateViewNavigationController.preferredContentSize = contentSize
        
        let popoverController = stateViewNavigationController.popoverPresentationController
        popoverController?.delegate = self
        popoverController?.sourceView = rootView
        popoverController?.sourceRect = rootView.bounds
        popoverController?.permittedArrowDirections = []
        
        rootviewController.present(stateViewNavigationController, animated: true, completion: nil)
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

