
import UIKit

class ShawneePodcastViewController: UIViewController {

    @IBOutlet weak var weview: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let url = NSURL(string: "http://player.podtrac.com/player?text=+Shawnee+Campus&rgb=999966&type=link&feed=http%3a%2f%2ffeeds.feedburner.com%2fChristCommunitySunday-ShawneeCampus")
        
        let request = NSURLRequest(URL: url!)
        weview.loadRequest(request)
    }
}
