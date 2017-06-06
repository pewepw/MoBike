//
//  AboutUsViewController.swift
//  MoBike
//
//  Created by Harry Ng on 06/06/2017.
//  Copyright © 2017 appconcept. All rights reserved.
//

import UIKit
import SWRevealViewController

class AboutUsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        if let revealVC = revealViewController() {
            revealVC.rearViewRevealWidth = 280
            navigationItem.leftBarButtonItem?.target = revealVC
            navigationItem.leftBarButtonItem?.action = #selector(SWRevealViewController.revealToggle(_:))
            view.addGestureRecognizer(revealVC.panGestureRecognizer())
        }

    }

   

}
