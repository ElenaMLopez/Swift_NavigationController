import UIKit

class ViewControllerGreen: UIViewController {
    var customTitle: String?

    override func viewDidLoad() {
        super.viewDidLoad()
     
        if let finalTitle = customTitle {
            self.title = finalTitle
        }
    }
}
