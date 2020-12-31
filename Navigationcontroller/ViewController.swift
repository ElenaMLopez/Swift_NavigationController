import UIKit

class ViewController: UIViewController {
    var colorSeted: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func ButtonGreyAction(_ sender: Any) {
        self.colorSeted = .systemGray2
        performSegue(withIdentifier: "VCSecondary", sender: self)
    }
    @IBAction func ButtonGreenAction(_ sender: Any) {
        self.colorSeted = .green
        performSegue(withIdentifier: "VCSecondary", sender: self)
    }
    @IBAction func ButtonPinkAction(_ sender: Any) {
        self.colorSeted = .systemPink
        performSegue(withIdentifier: "VCSecondary", sender: self)
    }

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "VCSecondary"  {
            if let destination = segue.destination as? ViewControllerSecondary{
                destination.customTitle = "Grey color"
                destination.color = self.colorSeted
            }
        }
    }
}
