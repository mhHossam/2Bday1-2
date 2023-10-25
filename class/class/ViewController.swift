//
//  ViewController.swift
//  class
//
//  Created by mohm on 25/10/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputText: UITextField!
    @IBOutlet weak var outputText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        outputText.text = " "
    }

    let manager = Manager ()
    let employee = Empolyee ()
    @IBAction func CalcEmpSalay(_ sender: Any) {
        guard let salarySt = inputText.text else { return }
        guard let salaryInt = Int(salarySt) else {return}
        let salaryEmp = employee.getSalary(salary:salaryInt )
        
        outputText.text = "Employee Salary \(salaryEmp)"
        
    }
    
    @IBAction func CalcMangSalary(_ sender: Any) {
        guard let salarySt = inputText.text else { return }
        guard let salaryInt = Int(salarySt) else {return}
        
        let salaryManager = manager.getSalary(salary: salaryInt)
        outputText.text = "Manager Salary \(salaryManager)"
        
    }
    
}


class Person {
    func getSalary(salary : Int )-> Int {
        return 0
    }
}

class Empolyee:Person {
 override func getSalary(salary : Int )-> Int {
     return salary
 }
}

class Manager:Person {
 override func getSalary(salary : Int )-> Int {
     return salary*10
 }
}
