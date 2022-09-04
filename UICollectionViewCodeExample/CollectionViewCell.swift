//
//  CollectionViewCell.swift
//  UICollectionViewCodeExample
//
//  Created by Erika C. Matesz Bueno on 30/08/22.
//

import Foundation
import UIKit

class CollectionViewCell: UICollectionViewCell {

    // MARK: UI Elements

    private lazy var view: UIView = {
        let element = UIView()
        element.translatesAutoresizingMaskIntoConstraints = false
        return element
    }()

    private lazy var label: UILabel = {
        let element = UILabel()
        element.textAlignment = .center
        element.translatesAutoresizingMaskIntoConstraints = false
        element.adjustsFontSizeToFitWidth = true
        return element
    }()

    // MARK: Initialization

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }

    init() {
        super.init(frame: .zero)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: Methods

    private func setupUI() {
        addSubview(view)
        addSubview(label)

        view.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        view.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        view.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        view.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        view.heightAnchor.constraint(equalToConstant: 50).isActive = true
        view.widthAnchor.constraint(equalToConstant: 50).isActive = true

        label.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        label.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
    }

    func configureCell(withColor color: UIColor = Mock().color, andText text: String = Mock().text) {
        view.backgroundColor = color
        label.text = text
    }
}

extension UICollectionViewCell {
    static var cellIdentifier: String {
        String(describing: self)
    }
}
