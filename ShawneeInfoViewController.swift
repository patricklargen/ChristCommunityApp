//
//  ShawneeInfoViewController.swift
//  ChristCommunity0731
//
//  Created by Patrick Largen on 9/14/15.
//  Copyright © 2015 Patrick Largen. All rights reserved.
//

import UIKit

class ShawneeInfoViewController: UIViewController {


    @IBOutlet weak var activity: UIActivityIndicatorView!
    @IBOutlet weak var shawneeInfoWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let URL = NSURL(string: "http://christcommunitykc.info/shawnee/")
        
        shawneeInfoWebView.loadRequest(NSURLRequest(URL: URL!))
    }
    
    func webViewDidStartLoad(_ : UIWebView) {
        activity.startAnimating()
        
        NSLog("The Shawnee Info WebView is starting to load")
    }
    
    func webViewDidFinishLoad(_ : UIWebView) {
        activity.stopAnimating()
        
        NSLog("The Shawnee Info WebView is done loading")
    }

}
