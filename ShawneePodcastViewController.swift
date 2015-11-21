//
//  PushPayViewController.swift
//  ChristCommunity0731
//
//  Created by Patrick Largen on 8/21/15.
//  Copyright © 2015 Patrick Largen. All rights reserved.
//

import UIKit


class ShawneePodcastViewController: UIViewController {

    @IBOutlet weak var weview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "http://player.podtrac.com/player?text=+Shawnee+Campus&rgb=999966&type=link&feed=http%3a%2f%2ffeeds.feedburner.com%2fChristCommunitySunday-ShawneeCampus")
        let request = NSURLRequest(URL: url!)
        weview.loadRequest(request)
        

        // Do any additional setup after loading the view.
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
