//
//  HomeViewController.swift
//  SEL4C_IOS
//
//  Created by Ivan Santiago Méndez on 22/08/23.
//

import Foundation
import UIKit

class HomeViewController: UIViewController {
    private var apiResponse: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    private let fetchButton: UIButton = {
        let button = UIButton()
        button.setTitle("Fetch List Activities API Data", for: .normal)
        button.backgroundColor = .blue
        button.addTarget(self, action: #selector(fetchButtonTapped), for: .touchUpInside)
        return button
    }()
    
    private let responseTextView: UITextView = {
        let textView = UITextView()
        textView.isEditable = false
        textView.layer.borderWidth = 1.0
        textView.layer.borderColor = UIColor.lightGray.cgColor
        textView.isScrollEnabled = true
        return textView
    }()
    
    private func setupUI() {
       
        view.backgroundColor = .white
        
        view.addSubview(fetchButton)
        fetchButton.translatesAutoresizingMaskIntoConstraints = false
        fetchButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        fetchButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
        
        view.addSubview(responseTextView)
        responseTextView.translatesAutoresizingMaskIntoConstraints = false
        responseTextView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        responseTextView.topAnchor.constraint(equalTo: fetchButton.bottomAnchor, constant: 20).isActive = true
        responseTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        responseTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        responseTextView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
    }
    
    @objc private func fetchButtonTapped() {
        fetchAPIResponse()
    }
    
    private func fetchAPIResponse() {
        listHomes()
        
    }
    
    private func updateTextView(withText text: String) {
        responseTextView.text = text
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
        ActividadAPI.actividadList() { (response, error) in
            if let error = error {
                print("Error listing activities: \(error)")
                return
            }
            
            if let actividadesList = response?.results {
                var result = "ACTIVIDADES:\n\n"
                for actividad in actividadesList {
                    result += " - \(actividad)\n\n"
                }
                
                self.apiResponse = result
                self.updateTextView(withText: self.apiResponse)
                print(result)
            }
        }
    }

   
}
