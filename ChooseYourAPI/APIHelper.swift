//
//  APIHelper.swift
//  ChooseYourAPI
//
//  Created by Aman Thakur on 2022-10-18.
//

import Foundation

class APIHelper {
    
    private let session: URLSession = {
        let config = URLSessionConfiguration.default
        return URLSession(configuration: config)
    }()
    
    func fetch(urlString: String = "https://swapi.dev/api/people/1") {
        guard
            let url = URL(string: urlString)
        else{
            preconditionFailure("was not able to convert string to url: \(urlString)")
        }
        
        let request = URLRequest(url: url)
        let task = session.dataTask(with: request) {
            data, response, error in
            
            if let data = data {
                do {
                    let jsonData = try JSONSerialization.jsonObject(with: data)
                    print(jsonData)
                } catch let err {
                    print("\(err)")
                }
            } else if let error = error {
                print("error with data task: \(error)")
            } else {
                print("something went wrong: \(String(describing: response))")
            }
        }
        task.resume()
    }
}
