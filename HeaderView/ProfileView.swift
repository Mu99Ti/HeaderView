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
        view.backgroundColor = .systemBackground
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var profileImageView: UIImageView = {
        let image = UIImage(systemName: "person.circle.fill")
        let imageView = UIImageView(image: image)
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var titleLabel = UILabel.makeForLabelView(text: "Jessica Smith", font: UIFont(name: "Arial Bold", size: 18), textColor: .black)
    private lazy var emailLabel = UILabel.makeForLabelView(text: "Jessica@gmail.com", font: UIFont(name: "Arial Bold", size: 16), textColor: .black.withAlphaComponent(0.3))
    
    private lazy var profileStackView = UIStackView.makeForStackView(axis: .vertical, spacing: 12, alignment: .center, distribution: .equalSpacing)
    
    // MARK: - Initializing
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .systemYellow
        translatesAutoresizingMaskIntoConstraints = false
        
        // MARK: - Add subviews
        addSubview(containerView)
        containerView.addSubview(profileStackView)
        profileStackView.addArrangedSubview(profileImageView)
        profileStackView.addArrangedSubview(titleLabel)
        profileStackView.addArrangedSubview(emailLabel)
        
        // MARK: - Setup Constraints
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: topAnchor),
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor)
        ])
        
        NSLayoutConstraint.activate([
            profileStackView.topAnchor.constraint(equalTo: containerView.topAnchor),
            profileStackView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            profileStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            profileStackView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor)
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
    
    // MARK: - Public Methods
    public func configureText(_ title: String, _ email: String) {
        titleLabel.text = title
        emailLabel.text = email
    }
}
