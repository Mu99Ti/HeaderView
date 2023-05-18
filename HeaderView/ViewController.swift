//
//  ViewController.swift
//  HeaderView
//
//  Created by Muhamad Talebi on 5/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Private Properties
    private let titles: [String] = ["Type", "From", "Birthday", "Member since"]
    private let values: [String] = ["Customer", "Vancouver, Canada", "Jul 2022", "Jul 2022"]
    
    private let headerView = HeaderView()
    
    //MARK: - viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // MARK: - Add Subviews
        view.addSubview(headerView)
        
        // MARK: - Setup Constraints
        NSLayoutConstraint.activate([
            headerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            headerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
        
        //MARK: - Configure View
        headerView.translatesAutoresizingMaskIntoConstraints = false
        headerView.configure(image: UIImage(systemName: "person.crop.circle.fill"), name: "Jessica Smith", email: "Jessica@gmail.com", titles: titles, values: values)
    }
}


