//
//  EmployeeViewModel.swift
//  API_Demo
//
//  Created by Keval Patel on 2/16/19.
//  Copyright © 2019 Keval Patel. All rights reserved.
//

import Foundation
struct EmployeeViewModel{
    
    let id : String
    let employee_name : String
    let employee_salary : String
    let profile_image : String
    let employee_age : String
    
    init(employee: EmployeeModel){
        self.id = employee.id
        self.employee_name = employee.employee_name != "" ? employee.employee_name : "SomeOne"
        self.employee_age = employee.employee_age
        self.employee_salary = employee.employee_salary != "0" ? employee.employee_salary : "xxx"
        self.profile_image = employee.profile_image
    }
    init() {
        self.id = ""
        self.employee_name = ""
        self.employee_age = ""
        self.employee_salary = ""
        self.profile_image = ""
    }
}
