//
//  ViewController.swift
//  API_Demo
//
//  Created by Keval Patel on 2/16/19.
//  Copyright © 2019 Keval Patel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tblEmployee: UITableView!
    var employeeViewModel = [EmployeeViewModel]()
    override func viewDidLoad() {
        super.viewDidLoad()
        tblEmployee.delegate = self
        tblEmployee.dataSource = self

        getData()
    }

    fileprivate func getData() {
        Service.shared.fetchCourses { (employee, err) in
            if let err = err {
                print("Failed to fetch courses:", err)
                return
            }
            self.employeeViewModel = employee?.map({return EmployeeViewModel(employee: $0)}) ?? []
            if self.employeeViewModel.count > 0{
                self.tblEmployee.reloadData()
            }
        }
    }
}

extension ViewController: UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return employeeViewModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tblEmployee.dequeueReusableCell(withIdentifier: "EmployeeCell", for: indexPath) as! EmployeeCell
        cell.employeeViewModel = employeeViewModel[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            if let destVC = self.storyboard?.instantiateViewController(withIdentifier: "EmployeeDetailVC") as? EmployeeDetailVC{
                destVC.emp = employeeViewModel[indexPath.row]
                self.navigationController?.pushViewController(destVC, animated: true)
            }
    }
    
}

