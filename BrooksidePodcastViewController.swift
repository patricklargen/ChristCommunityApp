
import UIKit


class BrooksidePodcastViewController: UIViewController {
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "http://player.podtrac.com/player?text=+Brookside+Campus&rgb=999966&type=link&feed=http%3a%2f%2ffeeds.feedburner.com%2fChristCommunitySunday-BrooksideCampus")
        
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
    }
}
