//
//  ViewController.swift
//  DnDTool
//
//  Created by Brian Wang on 4/28/18.
//  Copyright © 2018 Ji Woo Pak. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: "dungeonsanddragons-noshadow")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func diceRollerButtonPressed(_ sender: UIButton) {
    }
    @IBAction func bestiaryButtonPressed(_ sender: UIButton) {
    }
    @IBAction func spellBookButtonPressed(_ sender: UIButton) {
    }
}

