//
//  API_DemoTests.swift
//  API_DemoTests
//
//  Created by Keval Patel on 2/17/19.
//  Copyright © 2019 Keval Patel. All rights reserved.
//

import XCTest
@testable import API_Demo
class API_DemoTests: XCTestCase {

    func testViewModel(){
        let emp = EmployeeModel(id: "1", employee_name: "Keval", employee_salary: "95k", profile_image: "img", employee_age: "24")
        let empVM = EmployeeViewModel(employee: emp)
        XCTAssertEqual(empVM.employee_name, "Keval")
    }

}
