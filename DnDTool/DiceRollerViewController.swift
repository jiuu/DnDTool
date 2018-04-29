//
//  DiceRollerViewController.swift
//  DnDTool
//
//  Created by Brian Wang on 4/28/18.
//  Copyright © 2018 Ji Woo Pak. All rights reserved.
//

import UIKit


class DiceRollerViewController: UIViewController {
    
    
    
    @IBOutlet weak var dieImageView: UIImageView!
    @IBOutlet weak var d4ModifierLabel: UILabel!
    @IBOutlet weak var d6ModifierLabel: UILabel!
    @IBOutlet weak var d10ModifierLabel: UILabel!
    @IBOutlet weak var d20ModifierLabel: UILabel!
    @IBOutlet weak var d100ModifierLabel: UILabel!
    
    @IBOutlet weak var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        dieImageView.image = UIImage(named: "8788e8dcaa601ee566824d30cb2df150")
        // Do any additional setup after loading the view.
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func d4ButtonPressed(_ sender: UIButton) {
        resultLabel.text = (Int(arc4random_uniform(4)) + Int(d4ModifierLabel.text!)! + 1).description
    }
    @IBAction func d6ButtonPressed(_ sender: UIButton) {
        resultLabel.text = (Int(arc4random_uniform(6)) + Int(d6ModifierLabel.text!)! + 1).description
    }
    
    @IBAction func d10ButtonPressed(_ sender: UIButton) {
        resultLabel.text = (Int(arc4random_uniform(10)) + Int(d10ModifierLabel.text!)! + 1).description
    }
    @IBAction func d20ButtonPressed(_ sender: UIButton) {
        resultLabel.text = (Int(arc4random_uniform(20)) + Int(d20ModifierLabel.text!)! + 1).description
    }
    
    @IBAction func d100ButtonPressed(_ sender: UIButton) {
        resultLabel.text = (Int(arc4random_uniform(100)) + Int(d100ModifierLabel.text!)! + 1).description
    }
    @IBAction func d4StepperValueChanged(_ sender: UIStepper) {
        d4ModifierLabel.text = Int(sender.value).description
    }
    @IBAction func d6StepperValueChanged(_ sender: UIStepper) {
        d6ModifierLabel.text = Int(sender.value).description
    }
    @IBAction func d10StepperValueChanged(_ sender: UIStepper) {
        d10ModifierLabel.text = Int(sender.value).description
    }
    @IBAction func d20StepperValueChanged(_ sender: UIStepper) {
        d20ModifierLabel.text = Int(sender.value).description
    }
    @IBAction func d100StepperValueChanged(_ sender: UIStepper) {
        d100ModifierLabel.text = Int(sender.value).description
    }
    
    
    
}
