//
//  HomeViewController.swift
//  MoBike
//
//  Created by Harry Ng on 05/06/2017.
//  Copyright © 2017 appconcept. All rights reserved.
//

import UIKit
import SWRevealViewController

class HomeViewController: UIViewController {

    @IBOutlet weak var panelView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.titleView = UIImageView(image: #imageLiteral(resourceName: "ofoLogo"))
        self.navigationItem.leftBarButtonItem?.image = #imageLiteral(resourceName: "leftTopImage").withRenderingMode(.alwaysOriginal)
        self.navigationItem.rightBarButtonItem?.image = #imageLiteral(resourceName: "rightTopImage").withRenderingMode(.alwaysOriginal)
        
        if let revealVC = revealViewController() {
            revealVC.rearViewRevealWidth = 280
            navigationItem.leftBarButtonItem?.target = revealVC
            navigationItem.leftBarButtonItem?.action = #selector(SWRevealViewController.revealToggle(_:))
            view.addGestureRecognizer(revealVC.panGestureRecognizer())
        }
        
    }

    @IBAction func reCenterButton_TouchUpInside(_ sender: Any) {
    }

    @IBAction func reportButton_TouchUpInside(_ sender: Any) {
    }
    
    @IBAction func unlockButton_TouchUpInside(_ sender: Any) {
    }
    
}

