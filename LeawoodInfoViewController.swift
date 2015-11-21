//
//  LeawoodInfoViewController.swift
//  ChristCommunity0731
//
//  Created by Patrick Largen on 9/16/15.
//  Copyright © 2015 Patrick Largen. All rights reserved.
//

import UIKit

class LeawoodInfoViewController: UIViewController {
    
    @IBOutlet weak var activity: UIActivityIndicatorView!
    
    @IBOutlet weak var leawoodInfoWebView: UIWebView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let URL = NSURL(string: "http://christcommunitykc.info/leawood/")
        
        leawoodInfoWebView.loadRequest(NSURLRequest(URL: URL!))
    }
    
    func webViewDidStartLoad(_ : UIWebView) {
        activity.startAnimating()
        
        NSLog("The Leawood Info WebView is starting to load")
    }
    
    func webViewDidFinishLoad(_ : UIWebView) {
        activity.stopAnimating()
        
        NSLog("The Leawood Info WebView is done loading")
    }
}
