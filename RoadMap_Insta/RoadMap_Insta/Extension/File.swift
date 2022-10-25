//
//  File.swift
//  RoadMap_Insta
//
//  Created by Dima Kovrigin on 25.10.2022.
//

import Foundation

/// Расширение для строки предложение с большой буквы
extension String {

    var capitalized: String {
        let firstLetter = self.prefix(1).capitalized
        let remaindingLetters = self.dropFirst().lowercased()
        return firstLetter + remaindingLetters
    }
}
