//
//  LeawoodCalendarViewController.swift
//  ChristCommunity0731
//
//  Created by Patrick Largen on 9/1/15.
//  Copyright © 2015 Patrick Largen. All rights reserved.
//

import UIKit
import SafariServices
import WebKit

class CalendarViewController: UIViewController, UIWebViewDelegate {
   

    @IBOutlet weak var Activity: UIActivityIndicatorView!
    @IBOutlet weak var LeawoodCalendarWebView: UIWebView!


    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let URL = NSURL(string: "http://christcommunitykc.info/calendar/#tab-19f142d1-e2f1-5")
        
        LeawoodCalendarWebView.loadRequest(NSURLRequest(URL: URL!))

    }
    
    func webViewDidStartLoad(_ : UIWebView) {
        Activity.startAnimating()
        
        NSLog("The Calendar WebView is starting to load")
    }
    
    func webViewDidFinishLoad(_ : UIWebView) {
        Activity.stopAnimating()
        
        NSLog("The Calendar WebView is done loading")
    
    }

}
