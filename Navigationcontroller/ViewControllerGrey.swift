import UIKit

class ViewControllerGrey: UIViewController {
    var customTitle: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let finalTitle = customTitle {
            self.title = finalTitle
        }
    }
}
