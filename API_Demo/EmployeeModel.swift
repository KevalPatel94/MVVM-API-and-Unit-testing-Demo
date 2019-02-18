//
//  EmployeeModel.swift
//  API_Demo
//
//  Created by Keval Patel on 2/16/19.
//  Copyright © 2019 Keval Patel. All rights reserved.
//

import Foundation
struct EmployeeModel:Decodable{
    let id : String
    let employee_name : String
    let employee_salary : String
    let profile_image : String
    let employee_age : String
}
