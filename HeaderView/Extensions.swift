//
//  Extensions.swift
//  HeaderView
//
//  Created by Muhamad Talebi on 5/17/23.
//

import UIKit

extension UIStackView {
    static func makeForStackView(axis: NSLayoutConstraint.Axis = .vertical, spacing: CGFloat = 8, alignment: UIStackView.Alignment = .fill, distribution: UIStackView.Distribution = .fillProportionally) -> UIStackView {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = axis
        stackView.spacing = spacing
        stackView.alignment = alignment
        stackView.distribution = distribution
        return stackView
    }
}

extension UILabel {
    static func makeForLabelView(text: String? = nil, textAlignment: NSTextAlignment = .left, font: UIFont? = UIFont(name: "Arial", size: 10), textColor: UIColor = .black) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = textAlignment
        label.text = text
        label.font = font
        label.textColor = textColor
        return label
    }
}

extension UIImageView {
    static func makeForImageView(image: UIImage? = nil, contentMode: UIView.ContentMode = .scaleAspectFit) -> UIImageView {
        let imageView = UIImageView()
        imageView.image = image
        imageView.contentMode = contentMode
        imageView.translatesAutoresizingMaskIntoConstraints = false
    }
}
