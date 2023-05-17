//
//  HeaderView.swift
//  HeaderView
//
//  Created by Muhamad Talebi on 5/11/23.
//

import UIKit

class HeaderView: UIView {
    
    // MARK: - Private Properties
    
    private lazy var headerStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    private lazy var profileStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 20
        return stackView
    }()
    
    private lazy var titleStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.spacing = 12
        stackView.axis = .vertical
        return stackView
    }()
    
    private let titles: [String] = ["Type", "From", "Birthday", "Member since"]
    private let values: [String] = ["Customer", "Vancouver, Canada", "Jul 2022", "Jul 2022"]
    
    // MARK: - Initializing
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        translatesAutoresizingMaskIntoConstraints = false
        
        // MARK: - Add subviews
        addSubview(headerStackView)
        headerStackView.addArrangedSubview(profileStackView)
        headerStackView.addArrangedSubview(titleStackView)
        
        // MARK: - Setup Constraints
        NSLayoutConstraint.activate([
            headerStackView.topAnchor.constraint(equalTo: topAnchor),
            headerStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            headerStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            headerStackView.leadingAnchor.constraint(equalTo: leadingAnchor)
        ])
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Public Methods
    public func configure(_ profileView: ProfileView, _ titleViews: [TitleView]) {
        self.profileStackView.addArrangedSubview(profileView)
        titleViews.forEach { titleView in
            self.titleStackView.addArrangedSubview(titleView)
        }
        
//        configureTitleViewsText(titleViews, titles: titles, values: values)
    }
    
//    private func configureTitleViewsText(_ titleViews: [TitleView], titles: String], values: [String]) {
//        titleViews.forEach { titleView in
//            titleView.configureText(title: titles[index(ofAccessibilityElement: titleView)], value: values[index(ofAccessibilityElement: titleView)])
//        }
    
}


//func configure(_ model: Model) {
//    let mirorr = Mirror(reflecting: model)
//    mirorr.children.forEach { child in
//        if let value = child.value as? String {
//            let title = TitleView()
//            /*
//             add text
//             add to stackview
//             */
//
//        }
//    }
//
//}
