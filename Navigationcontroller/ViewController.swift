//
//  ViewController.swift
//  Navigationcontroller
//
//  Created by Elena on 21/11/2020.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func ButtonGreyAction(_ sender: Any) {
        performSegue(withIdentifier: "VCGrey", sender: self)
    }
    @IBAction func ButtonGreenAction(_ sender: Any) {
        performSegue(withIdentifier: "VCGreen", sender: self)
    }
    @IBAction func ButtonPinkAction(_ sender: Any) {
        performSegue(withIdentifier: "VCPink", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "VCGrey" {
            if let destination = segue.destination as? ViewControllerGrey{
                destination.customTitle = "Grey color"
            }
        }
        if segue.identifier == "VCGreen" {
            if let destination = segue.destination as? ViewControllerGreen{
                destination.customTitle = "Green color"
            }
        }
        if segue.identifier == "VCPink" {
            if let destination = segue.destination as? ViewControllerPink{
                destination.customTitle = "Pink color"
                }
            }
        }
}
