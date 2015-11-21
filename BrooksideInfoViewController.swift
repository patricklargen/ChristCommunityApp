//
//  BrooksideInfoViewController.swift
//  ChristCommunity0731
//
//  Created by Patrick Largen on 9/16/15.
//  Copyright © 2015 Patrick Largen. All rights reserved.
//

import UIKit

class BrooksideInfoViewController: UIViewController {
    
    @IBOutlet weak var activity: UIActivityIndicatorView!
    @IBOutlet weak var brooksideInfoWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let URL = NSURL(string: "http://christcommunitykc.info/brookside/")
        
        brooksideInfoWebView.loadRequest(NSURLRequest(URL: URL!))
    }
    
    func webViewDidStartLoad(_ : UIWebView) {
        activity.startAnimating()
        
        NSLog("The Brookside Info WebView is starting to load")
    }
    
    func webViewDidFinishLoad(_ : UIWebView) {
        activity.stopAnimating()
        
        NSLog("The Brookside Info WebView is done loading")
    }
}
