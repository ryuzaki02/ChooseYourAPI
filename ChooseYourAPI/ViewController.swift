//
//  ViewController.swift
//  ChooseYourAPI
//
//  Created by Aman Thakur on 2022-10-18.
//

import UIKit

class ViewController: UIViewController {
    
    private let apiHelper = APIHelper()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //MARK: - Button Actions
    @IBAction func api1ButtonAction(_ sender: UIButton!) {
        print("---------------API 1 is called ------------------")
        apiHelper.fetch(urlString: "https://random-data-api.com/api/v2/users?size=10&is_xml=true")
    }
    
    @IBAction func api2ButtonAction(_ sender: UIButton!) {
        print("---------------API 2 is called ------------------")
        apiHelper.fetch(urlString: "https://randomuser.me/api/")
    }
    
    @IBAction func api3ButtonAction(_ sender: UIButton!) {
        print("---------------API 3 is called ------------------")
        apiHelper.fetch(urlString: "https://api.thecatapi.com/v1/breeds")
    }

}

