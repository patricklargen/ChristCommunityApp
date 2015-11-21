
import UIKit

class DirectoryViewController: UIViewController {

    @IBOutlet weak var activity: UIActivityIndicatorView!
    @IBOutlet weak var directory: UIWebView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let URL = NSURL(string: "https://ccefc.ccbchurch.com/mobile_ind_search.php")
        
        directory.loadRequest(NSURLRequest(URL: URL!))
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
