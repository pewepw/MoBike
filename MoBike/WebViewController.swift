//
//  WebViewController.swift
//  MoBike
//
//  Created by Harry Ng on 05/06/2017.
//  Copyright © 2017 appconcept. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Promotion"
        
        let url = URL(string: "http://www.google.com")
        let request = URLRequest(url: url!)
        
        webView.loadRequest(request)

    }
}
