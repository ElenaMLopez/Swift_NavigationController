import UIKit

class ViewControllerSecondary: UIViewController {
    var customTitle: String?
    var color: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let background = color {
            super.view.backgroundColor = background
        }
        
        if let finalTitle = customTitle {
            self.title = finalTitle
        }
    }
}
