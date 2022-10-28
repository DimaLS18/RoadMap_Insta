//
//  PostCollectionViewCell.swift
//  RoadMap_Insta
//
//  Created by Dima Kovrigin on 28.10.2022.
//

import UIKit

/// Ячейка поста
final class PostCollectionViewCell: UICollectionViewCell {

    // MARK: - IBOutlet
    
    @IBOutlet private weak var postImageView: UIImageView!
    
    // MARK: - Public methods
    
    func configure(model: Post) {
        postImageView.image = UIImage(named: model.imageName)
    }
}
