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
        stackView.spacing = 10
        stackView.axis = .vertical
        return stackView
    }()
    
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
    }
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
