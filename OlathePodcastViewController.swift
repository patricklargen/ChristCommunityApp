//
//  PushPayViewController.swift
//  ChristCommunity0731
//
//  Created by Patrick Largen on 8/21/15.
//  Copyright © 2015 Patrick Largen. All rights reserved.
//

import UIKit




class OlathePodcastViewController: UIViewController  {

    
    
    @IBOutlet weak var weview: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    
        let url = NSURL(string: "http://player.podtrac.com/player?text=+Olathe+Campus&rgb=999966&type=link&feed=http%3a%2f%2ffeeds.feedburner.com%2fChristCommunitySunday-OlatheCampus")
        
//        var somevariable = AVAudioPlayer(contentsOfURL: url!)
        
        
        let request = NSURLRequest(URL: url!)
        weview.loadRequest(request)
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
