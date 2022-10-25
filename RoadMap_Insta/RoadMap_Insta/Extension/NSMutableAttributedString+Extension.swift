//
//  NSMutableAttributedString+Extension.swift
//  RoadMap_Insta
//
//  Created by Dima Kovrigin on 25.10.2022.
//

import UIKit

/// Расширение для создание строки с тремя атрубутами
extension NSMutableAttributedString {

    var fontSize: CGFloat {
        return 13
    }
    var boldFont: UIFont {
        return UIFont.boldSystemFont(ofSize: fontSize)
    }
    var normalFont: UIFont {
        return UIFont.systemFont(ofSize: fontSize)
    }

    func bold(_ value: String) -> NSMutableAttributedString {
        let attributes: [NSAttributedString.Key: Any] = [
            .font: boldFont,
            .foregroundColor: UIColor.label
        ]
        append(NSAttributedString(string: value, attributes: attributes))
        return self
    }

    func normal(_ value: String) -> NSMutableAttributedString {
        let attributes: [NSAttributedString.Key: Any] = [
            .font: normalFont,
            .foregroundColor: UIColor.label
        ]
        append(NSAttributedString(string: value, attributes: attributes))
        return self
    }

    func normalGray(_ value: String) -> NSMutableAttributedString {
        let attributes: [NSAttributedString.Key: Any] = [
            .font: normalFont,
            .foregroundColor: UIColor.secondaryLabel
        ]
        append(NSAttributedString(string: value, attributes: attributes))
        return self
    }
}
