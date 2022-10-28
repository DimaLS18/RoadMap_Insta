//
//  ActionPostTableViewCell.swift
//  RoadMap_Insta
//
//  Created by Dima Kovrigin on 28.10.2022.
//

import UIKit

/// Ячейка с картинкой
final class ActionPostTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    
    @IBOutlet private weak var avatarImageView: UIImageView!
    @IBOutlet private weak var contentLabel: UILabel!
    @IBOutlet private weak var postImageView: UIImageView!
    
    // MARK: - Public methods
    
    func configure(model: ActionContent) {
        contentLabel.attributedText = NSMutableAttributedString()
            .bold("\(model.userName) ")
            .normal("\(model.content) ")
            .normalGray("\(model.time)")
        
        avatarImageView.image = UIImage(named: model.avatarImageName)
    }
}
