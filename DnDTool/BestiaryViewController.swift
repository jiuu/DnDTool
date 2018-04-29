//
//  BestiaryViewController.swift
//  DnDTool
//
//  Created by Brian Wang on 4/28/18.
//  Copyright © 2018 Ji Woo Pak. All rights reserved.
//

import UIKit

class BestiaryViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    
    var monsters = Monsters()
    var fruits : [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        fruits.append("apple")
        tableView.dataSource = self
        tableView.delegate = self
        monsters.getMonsters {
            self.tableView.reloadData()
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowMonsterDetail" {
            let destination = segue.destination as! MonsterDetailViewController
            let selectedIndex = tableView.indexPathForSelectedRow!
            destination.monsterData.name = monsters.monsterArray[selectedIndex.row].name
            destination.monsterData.url = monsters.monsterArray[selectedIndex.row].url
        }
    }


}

extension BestiaryViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return monsters.monsterArray.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = monsters.monsterArray[indexPath.row].name
        return cell
    }
}
