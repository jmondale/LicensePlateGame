//
//  LicensePlateItem.swift
//  LicensePlateGame
//
//  Created by Jaye Mondale on 2/18/16.
//  Copyright © 2016 5mConsult. All rights reserved.
//

import Foundation
import UIKit

class LicensePlateItem: NSObject, NSCoding, Codable {
    var stateName = ""
    var stateFlagImage: UIImage?
    var checked = false
    var stateCapital = ""
    var stateFlag = ""
    var yearEstablished = ""
    var yearSettled = ""
    var stateOrder = ""
    var stateFlagImageName = ""
    
    enum CodingKeys: String, CodingKey {
        case stateName
        case checked
        case stateCapital
        case stateFlag
        case yearEstablished
        case yearSettled
        case stateOrder
        case stateFlagImageName
    }
    
    required init?(coder aDecoder: NSCoder) {
        stateName = aDecoder.decodeObject(forKey: "StateName") as? String ?? ""
        stateCapital = aDecoder.decodeObject(forKey: "StateCapital") as? String ?? ""
        checked = aDecoder.decodeBool(forKey: "Checked")
        stateFlag = aDecoder.decodeObject(forKey: "Flag") as? String ?? ""
        yearEstablished = aDecoder.decodeObject(forKey: "YearEstablished") as? String ?? ""
        yearSettled = aDecoder.decodeObject(forKey: "YearSettled") as? String ?? ""
        stateOrder = aDecoder.decodeObject(forKey: "StateOrder") as? String ?? ""
        stateFlagImageName = aDecoder.decodeObject(forKey: "StateFlageImageName") as? String ?? ""
        super.init()
    }
    
    override init() {
        super.init()
    }
    
    func toggleChecked() {
        checked = !checked
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(stateName, forKey: "StateName")
        aCoder.encode(stateCapital, forKey: "StateCapital")
        aCoder.encode(checked, forKey: "Checked")
        aCoder.encode(stateFlag, forKey: "Flag")
        aCoder.encode(yearEstablished, forKey: "YearEstablished")
        aCoder.encode(yearSettled, forKey: "YearSettled")
        aCoder.encode(stateOrder, forKey: "StateOrder")
        aCoder.encode(stateFlagImageName, forKey: "StateFlageImageName")
    }
    
}
