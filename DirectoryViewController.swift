//
//  LeawoodDirectoryViewController.swift
//  ChristCommunity0731
//
//  Created by Patrick Largen on 8/31/15.
//  Copyright © 2015 Patrick Largen. All rights reserved.
//

import UIKit

import WebKit

class DirectoryViewController: UIViewController {

    @IBOutlet weak var Activity: UIActivityIndicatorView!
    @IBOutlet weak var LeawoodDirectory: UIWebView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let URL = NSURL(string: "https://ccefc.ccbchurch.com/mobile_ind_search.php")
        
        LeawoodDirectory.loadRequest(NSURLRequest(URL: URL!))

        // Do any additional setup after loading the view.
    }

    func webViewDidStartLoad(_ : UIWebView) {
        Activity.startAnimating()
        
        NSLog("The WebView is starting to load")
    }
    
    func webViewDidFinishLoad(_ : UIWebView) {
        Activity.stopAnimating()
        
        NSLog("The WebView is done loading")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
