
import UIKit

class OpenHereViewController: UIViewController {
    
    @IBOutlet weak var openHereWebView: UIWebView!
    @IBOutlet weak var activity: UIActivityIndicatorView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let URL = NSURL(string: "http://openherebible.com")
        
        openHereWebView.loadRequest(NSURLRequest(URL: URL!))
    }
    
    func webViewDidStartLoad(_ : UIWebView) {
        activity.startAnimating()
        
        NSLog("The WebView is starting to load")
    }
    
    func webViewDidFinishLoad(_ : UIWebView) {
        activity.stopAnimating()
        
        NSLog("The WebView is done loading")
    }
    
}