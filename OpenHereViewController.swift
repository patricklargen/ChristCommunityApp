
import UIKit

import WebKit

class OpenHereViewController: UIViewController {
    
    @IBOutlet weak var OpenHereWebView: UIWebView!
    
    @IBOutlet weak var ProgressIndicator: UIActivityIndicatorView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let URL = NSURL(string: "http://openherebible.com")
        
        OpenHereWebView.loadRequest(NSURLRequest(URL: URL!))
    }
    
    func webViewDidStartLoad(_ : UIWebView) {
        ProgressIndicator.startAnimating()
        
        NSLog("The WebView is starting to load")
    }
    
    func webViewDidFinishLoad(_ : UIWebView) {
        ProgressIndicator.stopAnimating()
        
        NSLog("The WebView is done loading")
    }
    
}