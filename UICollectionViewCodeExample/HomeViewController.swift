//
//  HomeViewController.swift
//  UICollectionViewCodeExample
//
//  Created by Erika C. Matesz Bueno on 30/08/22.
//

import UIKit

class HomeViewController: UIViewController {

    // MARK: UI Elements

    private lazy var collectionView: UICollectionView = {
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical

        let element = UICollectionView(frame: .zero, collectionViewLayout: layout)
        element.backgroundColor = .clear
        element.dataSource = self
        element.delegate = self
        element.translatesAutoresizingMaskIntoConstraints = false
        element.alwaysBounceVertical = true
        element.isScrollEnabled = true
        return element
    }()

    // MARK: View Life Cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }

    // MARK: Methods

    private func setupUI() {
        collectionView.register(CollectionViewCell.self, forCellWithReuseIdentifier: CollectionViewCell.cellIdentifier)
        view.backgroundColor = .systemGray6
        view.addSubview(collectionView)

        collectionView
            .topAnchor.constraint(equalTo: self.view.topAnchor).isActive = true
        collectionView
            .bottomAnchor.constraint(equalTo: self.view.bottomAnchor).isActive = true
        collectionView
            .trailingAnchor.constraint(equalTo: self.view.trailingAnchor).isActive = true
        collectionView
            .leadingAnchor.constraint(equalTo: self.view.leadingAnchor).isActive = true
    }
}

// MARK: - Extension

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 100
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.cellIdentifier, for: indexPath) as? CollectionViewCell {
            cell.configureCell()
            return cell
        }
        return UICollectionViewCell()
    }

}
