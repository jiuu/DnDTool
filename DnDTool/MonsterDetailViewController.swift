//
//  MonsterDetailViewController.swift
//  DnDTool
//
//  Created by Brian Wang on 4/29/18.
//  Copyright © 2018 Ji Woo Pak. All rights reserved.
//

import UIKit

class MonsterDetailViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var sizeTypeLabel: UILabel!
    @IBOutlet weak var hitPointsLabel: UILabel!
    @IBOutlet weak var armorClassLabel: UILabel!
    @IBOutlet weak var actionLabel: UILabel!
    @IBOutlet weak var strengthLabel: UILabel!
    @IBOutlet weak var dexterityLabel: UILabel!
    @IBOutlet weak var constitutionLabel: UILabel!
    @IBOutlet weak var intelligenceLabel: UILabel!
    @IBOutlet weak var wisdomLabel: UILabel!
    @IBOutlet weak var charismaLabel: UILabel!
    @IBOutlet weak var speedLabel: UILabel!
    @IBOutlet weak var challengeRatingLabel: UILabel!
    
    var monsterData = MonsterData()

    override func viewDidLoad() {
        super.viewDidLoad()

        monsterData.getMonster {
            self.nameLabel.text = self.monsterData.name
            self.actionLabel.text = self.monsterData.actionString
            self.sizeTypeLabel.text = self.monsterData.size + " " + self.monsterData.type
            self.hitPointsLabel.text = "Hit points - \(self.monsterData.hit_points)"
            self.armorClassLabel.text = "Armor class - \(self.monsterData.armor_class)"
            self.speedLabel.text = "Speed - \(self.monsterData.speed)"
            self.strengthLabel.text = "\(self.monsterData.strength)"
            self.dexterityLabel.text = "\(self.monsterData.dexterity)"
            self.constitutionLabel.text = "\(self.monsterData.constitution)"
            self.intelligenceLabel.text = "\(self.monsterData.intelligence)"
            self.wisdomLabel.text = "\(self.monsterData.wisdom)"
            self.charismaLabel.text = "\(self.monsterData.charisma)"
            if (self.monsterData.challenge_rating < 10) {
                self.challengeRatingLabel.textColor = UIColor.green
            } else if (self.monsterData.challenge_rating < 20) {
                self.challengeRatingLabel.textColor = UIColor.yellow
            } else {
                self.challengeRatingLabel.textColor = UIColor.red
            }
            self.challengeRatingLabel.text = "Challenge rating - \(self.monsterData.challenge_rating)"
        }
    }


}
