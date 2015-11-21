
import UIKit

class CalendarViewController: UIViewController, UIWebViewDelegate {
   

    @IBOutlet weak var activity: UIActivityIndicatorView!
    @IBOutlet weak var leawoodCalendarWebView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let URL = NSURL(string: "http://christcommunitykc.info/calendar/#tab-19f142d1-e2f1-5")
        
        leawoodCalendarWebView.loadRequest(NSURLRequest(URL: URL!))

    }
    
    func webViewDidStartLoad(_ : UIWebView) {
        activity.startAnimating()
        
        NSLog("The Calendar WebView is starting to load")
    }
    
    func webViewDidFinishLoad(_ : UIWebView) {
        activity.stopAnimating()
        
        NSLog("The Calendar WebView is done loading")
    }
}
