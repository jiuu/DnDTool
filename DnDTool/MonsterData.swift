//
//  MonsterData.swift
//  DnDTool
//
//  Created by Brian Wang on 4/29/18.
//  Copyright © 2018 Ji Woo Pak. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class MonsterData {
    var name = ""
    var size = ""
    var type = ""
    var armor_class = 0
    var hit_points = 0
    var speed = 0
    var strength = 0
    var dexterity = 0
    var constitution = 0
    var intelligence = 0
    var wisdom = 0
    var charisma = 0
    var challenge_rating = 0
    var actions :[JSON] = []
    var actionName = ""
    var actionDescription = ""
    
    var actionString = ""
    
    
    var url = ""
    
    func getMonster(completed: @escaping () -> ()) {
        Alamofire.request(self.url).responseJSON {response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                self.size = json["size"].stringValue
                self.type = json["type"].stringValue
                self.armor_class = json["armor_class"].intValue
                self.hit_points = json["hit_points"].intValue
                self.speed = json["speed"].intValue
                self.strength = json["strength"].intValue
                self.dexterity = json["dexterity"].intValue
                self.constitution = json["constitution"].intValue
                self.intelligence = json["intelligence"].intValue
                self.wisdom = json["wisdom"].intValue
                self.charisma = json["charisma"].intValue
                self.challenge_rating = json["challenge_rating"].intValue
                self.actions = json["actions"].arrayValue
                for action in self.actions {
                    self.actionString.append(action["name"].stringValue)
                   self.actionString.append(" - ")
                    self.actionString.append(action["desc"].stringValue)
                    self.actionString.append("\n\n")
                }

                
            case .failure(let error):
                print("*** ERROR: failed to get data from url \(self.url) \(error.localizedDescription)")
            }
            completed()
        }
}
}
