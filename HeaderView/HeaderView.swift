//
//  HeaderView.swift
//  HeaderView
//
//  Created by Muhamad Talebi on 5/11/23.
//

import UIKit

class HeaderView: UIView {
    
    // MARK: - Private Properties
    private lazy var stackView = UIStackView.makeForStackView(axis: .vertical, spacing: 20)
    private lazy var titleStackView = UIStackView.makeForStackView(axis: .vertical, spacing: 12)
    private lazy var profileStackView = UIStackView.makeForStackView(axis: .vertical,spacing: 20, distribution: .equalSpacing)
    private lazy var titleView = TitleView()
    private lazy var titleView2 = TitleView()
    private lazy var titleView3 = TitleView()
    private lazy var titleView4 = TitleView()
    private lazy var profileView = ProfileView()
    
    private var titleViews: [TitleView] = []
    
    // MARK: - Initializing
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // MARK: - Add Subviews
        addSubview(stackView)
        stackView.addArrangedSubview(profileStackView)
        stackView.addArrangedSubview(titleStackView)
        
        // MARK: - Setup Constraints
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -20),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor)
        ])
        
        // MARK: - Configure View
        titleViews.append(titleView)
        titleViews.append(titleView2)
        titleViews.append(titleView3)
        titleViews.append(titleView4)
        
        backgroundColor = .systemBackground
        setup(profileView, titleViews)
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private Methods
    private func setup(_ profileView: ProfileView, _ titleViews: [TitleView]) {
        titleStackView.removeAllArrangedSubviews()
        self.profileStackView.addArrangedSubview(profileView)
        titleViews.forEach { titleView in
            self.titleStackView.addArrangedSubview(titleView)
        }
    }
    
    // MARK: - Internal Methods
    internal func configure(image: UIImage? = UIImage(systemName: "person.crop.circle.fill"), name: String, email: String, titles: [String], values: [String]) {
        self.titleViews.enumerated().forEach { (index, value) in
            value.configureText(title: titles[index], value: values[index])
            value.translatesAutoresizingMaskIntoConstraints = false
        }
        profileView.configure(image: image, name: name, email: email)
        profileView.translatesAutoresizingMaskIntoConstraints = false
    }
}
