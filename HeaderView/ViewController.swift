//
//  ViewController.swift
//  HeaderView
//
//  Created by Muhamad Talebi on 5/11/23.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - Private Properties
    private let titleView = TitleView()
    private let titleView2 = TitleView()
    private let titleView3 = TitleView()
    private let titleView4 = TitleView()
    private let profileView = ProfileView()
    private let headerView = HeaderView()
    private var titleViews: [TitleView] = []

    private let titles: [String] = ["Type", "From", "Birthday", "Member since"]
    private let values: [String] = ["Customer", "Vancouver, Canada", "Jul 2022", "Jul 2022"]
    
    private var testStack: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        titleViews.append(titleView)
        titleViews.append(titleView2)
        titleViews.append(titleView3)
        titleViews.append(titleView4)
        
        titleViews.enumerated().forEach { (index, value) in
            value.configureText(title: titles[index], value: values[index])
        }
        
        // MARK: - Add subviews
        view.addSubview(headerView)
        headerView.configure(profileView, titleViews)
        
        // MARK: - Setup Constraints
        NSLayoutConstraint.activate([
            headerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            headerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            headerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            headerView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
        ])
    }
}


