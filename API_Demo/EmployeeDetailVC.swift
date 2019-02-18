//
//  EmployeeDetailVC.swift
//  API_Demo
//
//  Created by Keval Patel on 2/17/19.
//  Copyright © 2019 Keval Patel. All rights reserved.
//

import UIKit

class EmployeeDetailVC: UIViewController {
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblid: UILabel!
    @IBOutlet weak var lblAge: UILabel!
    @IBOutlet weak var lblsalary: UILabel!

    var emp = EmployeeViewModel()
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    func setUpView(){
        lblName.text = emp.employee_name
        lblid.text = emp.id
        lblAge.text = emp.employee_age
        lblsalary.text = emp.employee_salary
    }
    
}
