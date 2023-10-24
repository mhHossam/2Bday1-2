//
//  ViewController.swift
//  task1
//
//  Created by mohm on 23/10/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heartRateScreen: UITextField!
    
    @IBOutlet weak var heartDescription: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        heartDescription.text = ""
        
    }
    
    @IBAction func calculateHeartRate(_ sender: Any) {
        
        guard let heartRateSt = heartRateScreen.text else {return}
        guard let heartRate = Int(heartRateSt) else {return}
        heartRateScreen.text = ""
        switch heartRate {
        case 100...120 :
            heartDescription.text = "you are in the very light zone. acivity in this zone helps with recovery."
        case 121...140 :
            heartDescription.text = "you are in the light zone. acivity in this zone helps improve basic."
        case 141...160 :
            heartDescription.text = "you are in the moderate zone. acivity in this zone helps improve aerobic."
        case 161...180 :
            heartDescription.text = "you are in the hard zone. acivity in this zone helps improve basic."
        case 181...200 :
            heartDescription.text = "you are in the maximum zone. acivity in this zone helps improve basic."
        case 201...Int.max :
            heartDescription.text = "You are in danger, stop activity now"
            
        default:
            heartDescription.text = "Not Valid input"
            
        }
        
    }
    
}

