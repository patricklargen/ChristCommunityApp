//
//  OlatheInfoViewController.swift
//  ChristCommunity0731
//
//  Created by Patrick Largen on 9/16/15.
//  Copyright © 2015 Patrick Largen. All rights reserved.
//

import UIKit

class OlatheInfoViewController: UIViewController {

    @IBOutlet weak var activity: UIActivityIndicatorView!
    @IBOutlet weak var olatheInfoWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let URL = NSURL(string: "http://christcommunitykc.info/olathe/")
        
        olatheInfoWebView.loadRequest(NSURLRequest(URL: URL!))

    }
    func webViewDidStartLoad(_ : UIWebView) {
        activity.startAnimating()
        
        NSLog("The Olathe Info WebView is starting to load")
    }
    
    func webViewDidFinishLoad(_ : UIWebView) {
        activity.stopAnimating()
        
        NSLog("The Olathe Info WebView is done loading")
    }
}
