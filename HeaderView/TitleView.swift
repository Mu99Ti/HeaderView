//
//  TitleView.swift
//  HeaderView
//
//  Created by Muhamad Talebi on 5/11/23.
//

import UIKit

class TitleView: UIView {
    
    // MARK: - Private Properties
    private lazy var titleLabel = UILabel.makeForLabelView(textAlignment: .left, font: UIFont(name: "Arial", size: 15), textColor: .systemGray.withAlphaComponent(1))
    private lazy var valueLabel = UILabel.makeForLabelView(textAlignment: .right, font: UIFont(name: "Arial", size: 15), textColor: .black)
    private lazy var stackView = UIStackView.makeForStackView(axis: .horizontal, spacing: 0, alignment: .fill, distribution: .fillProportionally)
    
    // MARK: - Initializing View
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // MARK: - Add Subviews
        addSubview(stackView)
        stackView.addArrangedSubview(titleLabel)
        stackView.addArrangedSubview(valueLabel)
        
        // MARK: - Setup Constraints
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: self.topAnchor),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            stackView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20)
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

