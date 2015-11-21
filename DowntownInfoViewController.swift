//
//  DowntownInfoViewController.swift
//  ChristCommunity0731
//
//  Created by Patrick Largen on 9/16/15.
//  Copyright © 2015 Patrick Largen. All rights reserved.
//

import UIKit


class DowntownInfoViewController: UIViewController {
    @IBOutlet weak var Activity: UIActivityIndicatorView!
    @IBOutlet weak var DowntownInfoWebView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let URL = NSURL(string: "http://christcommunitykc.info/downtown/")
        
        DowntownInfoWebView.loadRequest(NSURLRequest(URL: URL!))
        
        // Do any additional setup after loading the view.
    }
    func webViewDidStartLoad(_ : UIWebView) {
        Activity.startAnimating()
        
        NSLog("The Downtown Info WebView is starting to load")
    }
    
    func webViewDidFinishLoad(_ : UIWebView) {
        Activity.stopAnimating()
        
        NSLog("The Downtown Info WebView is done loading")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
