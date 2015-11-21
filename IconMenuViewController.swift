//
//  IconMenuViewController.swift
//  ChristCommunity0731
//
//  Created by Patrick Largen on 8/6/15.
//  Copyright © 2015 Patrick Largen. All rights reserved.
//

import UIKit
import WebKit
import SafariServices

class IconMenuViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func givingButtonPressed(sender: UIButton) {
        
        UIApplication.sharedApplication().openURL(NSURL(string: "https://pushpay.com/pay/christcommunitykc")!)
    }
}
