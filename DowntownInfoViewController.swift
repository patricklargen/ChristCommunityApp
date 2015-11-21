//
//  DowntownInfoViewController.swift
//  ChristCommunity0731
//
//  Created by Patrick Largen on 9/16/15.
//  Copyright © 2015 Patrick Largen. All rights reserved.
//

import UIKit

class DowntownInfoViewController: UIViewController {
    
    @IBOutlet weak var activity: UIActivityIndicatorView!
    @IBOutlet weak var downtownInfoWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let URL = NSURL(string: "http://christcommunitykc.info/downtown/")
        
        downtownInfoWebView.loadRequest(NSURLRequest(URL: URL!))
    }
    
    func webViewDidStartLoad(_ : UIWebView) {
        activity.startAnimating()
        
        NSLog("The Downtown Info WebView is starting to load")
    }
    
    func webViewDidFinishLoad(_ : UIWebView) {
        activity.stopAnimating()
        
        NSLog("The Downtown Info WebView is done loading")
    }
}
