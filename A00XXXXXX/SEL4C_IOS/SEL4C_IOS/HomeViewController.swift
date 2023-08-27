//
//  HomeViewController.swift
//  SEL4C_IOS
//
//  Created by Ivan Santiago Méndez on 22/08/23.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Call the API methods here
        //createHome()
        listHomes()
        // Call other methods as needed
    }

    // Example method to create a home
    func createHome() {
        let newHome = Home(title: "Title", _description: "Description", createdAt: Date())
        
        HomeAPI.homeCreate(body: newHome) { (response, error) in
            if let error = error {
                print("Error creating home: \(error)")
                return
            }
            
            if let createdHome = response {
                print("Home created: \(createdHome)")
            }
        }
    }

    // Example method to list homes
    func listHomes() {
        UsersAPI.usersList() { (response, error) in
            if let error = error {
                print("Error listing homes: \(error)")
                return
            }
            
            if let homesList = response?.results {
                for home in homesList {
                    print("Home: \(home)")
                }
            }
        }
    }
    
    // Add more methods to interact with other API endpoints
    
}
