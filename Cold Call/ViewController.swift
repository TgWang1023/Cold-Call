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
    @IBOutlet weak var bigNumLabel: UILabel!
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
    var chosen_num: Int = 0
    var col: UIColor = UIColor(displayP3Red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
    @IBAction func coldCall(_ sender: UIButton) {
        chosen_one = Int(arc4random_uniform(UInt32(nameList.count)))
        chosen_num = Int(1 + arc4random_uniform(UInt32(5)))
        if chosen_num == 1 || chosen_num == 2 {
            col = UIColor(displayP3Red: 1.0, green: 0.0, blue: 0.0, alpha: 1.0)
        } else if chosen_num == 3 || chosen_num == 4 {
            col = UIColor(displayP3Red: 1.0, green: 0.5, blue: 0.0, alpha: 1.0)
        } else {
            col = UIColor(displayP3Red: 0.0, green: 1.0, blue: 0.0, alpha: 1.0)
        }
        updateUI()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bigNumLabel.isHidden = true
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func updateUI() {
        bigNumLabel.isHidden = false
        nameLabel.text = nameList[chosen_one]
        bigNumLabel.text = String(chosen_num)
        bigNumLabel.textColor = col
    }

}

