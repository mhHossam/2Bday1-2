//
//  ViewController.swift
//  task2
//
//  Created by mohm on 24/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var temoread: UILabel!
    @IBOutlet weak var temp: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        temoread.text = ""
        
    }

    @IBAction func TempFer(_ sender: Any) {
        guard let tempCSt = temp.text else { return }
             guard let tempInt = Int(tempCSt) else {return}
             let tempFeh :Float = (Float(tempInt) * (9/5)) + 32
             print("\(tempFeh)")
             temoread.text = "\(tempFeh)"    }
    
    @IBAction func TempKel(_ sender: Any) {
        guard let tempCSt = temp.text else { return }
               guard let tempInt = Int(tempCSt) else {return}
               let tempKel = Float(tempInt) + 273.1518
               temoread.text = "\(tempKel)"    }
}

