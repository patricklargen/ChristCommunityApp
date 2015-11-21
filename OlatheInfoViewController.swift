//
//  OlatheInfoViewController.swift
//  ChristCommunity0731
//
//  Created by Patrick Largen on 9/16/15.
//  Copyright © 2015 Patrick Largen. All rights reserved.
//

import UIKit


class OlatheInfoViewController: UIViewController {

    @IBOutlet weak var Activity: UIActivityIndicatorView!
    @IBOutlet weak var OlatheInfoWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        let URL = NSURL(string: "http://christcommunitykc.info/olathe/")
        
        OlatheInfoWebView.loadRequest(NSURLRequest(URL: URL!))

        // Do any additional setup after loading the view.
    }
    func webViewDidStartLoad(_ : UIWebView) {
        Activity.startAnimating()
        
        NSLog("The Olathe Info WebView is starting to load")
    }
    
    func webViewDidFinishLoad(_ : UIWebView) {
        Activity.stopAnimating()
        
        NSLog("The Olathe Info WebView is done loading")
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
