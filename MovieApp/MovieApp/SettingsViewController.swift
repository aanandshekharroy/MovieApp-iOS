//
//  SettingsViewController.swift
//  MovieApp
//
//  Created by Rashi Karanpuria on 06/12/17.
//  Copyright © 2017 Rashi. All rights reserved.
//

import Foundation
import UIKit
class SettingsViewController: UITableViewController {
    @IBOutlet weak var topRatedLabel: UILabel!
    @IBOutlet weak var topRatedSelectedTick: UIImageView!
    
    @IBOutlet weak var popularLabel: UILabel!
    @IBOutlet weak var popularSelectedTick: UIImageView!
    
    @IBOutlet weak var gridDisplayLabel: UILabel!
    @IBOutlet weak var gridSelectedTick: UIImageView!
    
    @IBOutlet weak var tableDisplayLabel: UILabel!
    @IBOutlet weak var tableSelectedTick: UIImageView!
    
    
    let dataManager = DataManager()
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        let gestureControl = UITapGestureRecognizer(target: self, action: Selector(("labelClicked(withSender:)")))
        topRatedLabel.addGestureRecognizer(gestureControl)
        popularLabel.addGestureRecognizer(gestureControl)
        gridDisplayLabel.addGestureRecognizer(gestureControl)
        tableDisplayLabel.addGestureRecognizer(gestureControl)
    }
    @objc func labelClicked(withSender sender:AnyObject?){
        print((sender as! UILabel).text!)
        
    }
}
