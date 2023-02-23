//
//  DataModel.swift
//  LicensePlateGame
//
//  Created by Jaye Mondale on 2/18/16.
//  Copyright © 2016 5mConsult. All rights reserved.
//

import Foundation

class DataModel: Codable  {
    var states = States()?.items
    var firstTimeToPlay = true
    
    enum CodingKeys: String, CodingKey {
      case states
      case firstTimeToPlay
    }
    
    init() {
        loadLicensePlateItems()
    }
    
    func documentsDirectory() -> String {
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        return paths[0]
    }
    
    func dataFilePath() -> String {
        return (documentsDirectory() as NSString).appendingPathComponent("LicensePlateItem.plist")
    }
    
    func saveLicensePlateItem() {
        do {
            let encoder = JSONEncoder()
            let data = try encoder.encode(states)
            UserDefaults.standard.set(data, forKey: "LicensePlateItems")

        } catch {
            print("Unable to Encode Note (\(error))")
        }
    }
    
    func loadLicensePlateItems() {
        if let data = UserDefaults.standard.data(forKey: "LicensePlateItems") {
            do {
                let decoder = JSONDecoder()
                decoder.keyDecodingStrategy = .convertFromSnakeCase
                states = try decoder.decode([LicensePlateItem].self, from: data)
            } catch {
                print("Unable to Decode Note (\(error))")
            }
        }
    }
}
