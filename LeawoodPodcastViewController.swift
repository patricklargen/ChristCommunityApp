
import UIKit

class LeawoodPodcastViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "http://player.podtrac.com/player?text=+Leawood+Campus&rgb=999966&type=link&feed=http%3a%2f%2ffeeds.feedburner.com%2fChristCommunitySunday-LeawoodCampus")
        
        let request = NSURLRequest(URL: url!)
        webView.loadRequest(request)
    }
}
