//
//  TitleView.swift
//  HeaderView
//
//  Created by Muhamad Talebi on 5/11/23.
//

import UIKit

class TitleView: UIView {
    
    // MARK: - Private Properties
    private lazy var titleLabel = UILabel.makeForLabelView(text: "Type", textAlignment: .left, font: UIFont(name: "Arial", size: 15), textColor: .systemGray.withAlphaComponent(1))
    private lazy var valueLabel = UILabel.makeForLabelView(text: "Customer", textAlignment: .right, font: UIFont(name: "Arial", size: 15), textColor: .black)
    private lazy var titleStackView = UIStackView.makeForStackView(axis: .horizontal, spacing: 0, alignment: .fill, distribution: .fillProportionally)
    
    // MARK: - Initializing
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        translatesAutoresizingMaskIntoConstraints = false
        
        // MARK: - Add subviews
        addSubview(titleStackView)
        titleStackView.addArrangedSubview(titleLabel)
        titleStackView.addArrangedSubview(valueLabel)
        
        // MARK: - Setup Constraints
        NSLayoutConstraint.activate([
            titleStackView.topAnchor.constraint(equalTo: topAnchor),
            titleStackView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            titleStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            titleStackView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20)
        ])
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Public Methods
    public func configureText(title: String, value: String) {
        titleLabel.text = title
        valueLabel.text = value
    }
}

