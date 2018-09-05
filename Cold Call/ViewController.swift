//
//  ViewController.swift
//  Cold Call
//
//  Created by Tiange Wang on 9/4/18.
//  Copyright © 2018 Tiange Wang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var nameLabel: UILabel!
    let nameList = [
        "Arlean",
        "Britney",
        "Wilda",
        "Basil",
        "Lolita",
        "Launa",
        "Helga",
        "Shandi",
        "Millie",
        "Keenan",
        "Mirella",
        "Naomi",
        "Thaddeus",
        "Kory",
        "Eldridge",
        "Felicidad",
        "Emmett",
        "Christen",
        "Willette",
        "Magdalena"
    ]
    var chosen_one: Int = 0
    
    @IBAction func coldCall(_ sender: UIButton) {
        chosen_one = Int(arc4random_uniform(UInt32(nameList.count)))
        updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateUI() {
        nameLabel.text = nameList[chosen_one]
    }

}

