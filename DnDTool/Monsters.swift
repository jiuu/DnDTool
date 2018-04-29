//
//  Monsters.swift
//  DnDTool
//
//  Created by Brian Wang on 4/29/18.
//  Copyright © 2018 Ji Woo Pak. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class Monsters {
    struct MonsterData {
        var name = ""
        var url = ""
    }
    var monsterArray: [MonsterData] = []
    let monsterUrl = "http://dnd5eapi.co/api/monsters/"

    func getMonsters(completed: @escaping () -> ()) {
        Alamofire.request(monsterUrl).responseJSON {response in
            switch response.result {
            case .success(let value):
                let json = JSON(value)
                let numberOfMonsters = json["results"].count
                for index in 0...numberOfMonsters - 1 {
                    let name = json["results"][index]["name"].stringValue
                    let url = json["results"][index]["url"].stringValue
                    self.monsterArray.append(MonsterData(name: name, url: url))
                    print(">>> Data check, \(index) \(name) \(url)")
                }
            case .failure(let error):
                print("*** ERROR: failed to get data from url \(self.monsterUrl) \(error.localizedDescription)")
            }
            completed()
        }
        
    }
}
