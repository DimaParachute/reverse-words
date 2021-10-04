//
//  reverser.swift
//  reverseApp
//
//  Created by Дмитрий Фетюхин on 28.09.2021.
//

import Foundation

class stringsWizard {
    var sentence: String       //Variable which contains text to reverse
    init(sentence: String) {
        self.sentence = sentence
    }
    func reverse(sentence: String) -> String {
        return sentence.split(separator: " ").map { String($0.reversed())}.joined(separator: " ")
    }
}
