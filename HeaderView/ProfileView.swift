//
//  ProfileView.swift
//  HeaderView
//
//  Created by Muhamad Talebi on 5/15/23.
//

import UIKit

class ProfileView: UIView {
    
    // MARK: - Private Properties
    private lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var profileImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var titleLabel = UILabel.makeForLabelView(font: UIFont(name: "Arial Bold", size: 18), textColor: .black)
    private lazy var emailLabel = UILabel.makeForLabelView(font: UIFont(name: "Arial Bold", size: 16), textColor: .black.withAlphaComponent(0.3))
    
    private lazy var stackView = UIStackView.makeForStackView(axis: .vertical, spacing: 12, alignment: .center, distribution: .equalSpacing)
    
    // MARK: - Initializing
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        translatesAutoresizingMaskIntoConstraints = false
        
        // MARK: - Add subviews
        addSubview(containerView)
        containerView.addSubview(stackView)
        stackView.addArrangedSubview(profileImageView)
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(emailLabel)
        
        // MARK: - Setup Constraints
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: containerView.topAnchor),
            stackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            profileImageView.widthAnchor.constraint(equalToConstant: 80),
            profileImageView.heightAnchor.constraint(equalToConstant: 80)
        ])
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Internal Methods
    internal func configure(image: UIImage?, name: String, email: String) {
        titleLabel.text = name
        emailLabel.text = email
        profileImageView.image = image
    }
}
