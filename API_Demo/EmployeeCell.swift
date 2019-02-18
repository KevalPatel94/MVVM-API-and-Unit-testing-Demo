//
//  EmployeeCell.swift
//  API_Demo
//
//  Created by Keval Patel on 2/17/19.
//  Copyright © 2019 Keval Patel. All rights reserved.
//

import UIKit

class EmployeeCell: UITableViewCell {

    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblSalary: UILabel!
    
    var employeeViewModel: EmployeeViewModel!{
        didSet{
            lblName.text = employeeViewModel.employee_name != "" ? employeeViewModel.employee_name : "SomeOne"
            lblSalary.text = employeeViewModel.employee_salary != "0" ? employeeViewModel.employee_salary : "xxx"
        }
    }
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style:style, reuseIdentifier: reuseIdentifier)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        lblName.textColor = UIColor.blue
        lblSalary.textColor = UIColor.green
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

}
