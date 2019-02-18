//
//  WebServices.swift
//  API_Demo
//
//  Created by Keval Patel on 2/16/19.
//  Copyright © 2019 Keval Patel. All rights reserved.
//

import Foundation

class Service: NSObject {
    static let shared = Service()
    
    func fetchCourses(completion: @escaping ([EmployeeModel]?, Error?) -> ()) {
        let urlString = "http://dummy.restapiexample.com/api/v1/employees"
        guard let url = URL(string: urlString) else { return }
        URLSession.shared.dataTask(with: url) { (data, resp, err) in
            if let err = err {
                completion(nil, err)
                print("Failed to fetch courses:", err)
                return
            }
            
            guard let data = data else { return }
            do {
                let courses = try JSONDecoder().decode([EmployeeModel].self, from: data)
                DispatchQueue.main.async {
                    completion(courses, nil)
                }
            } catch let jsonErr {
                print("Failed to decode:", jsonErr)
            }
            }.resume()
    }
}
