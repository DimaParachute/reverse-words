//
//  reverser.swift
//  reverseApp
//
//  Created by Дмитрий Фетюхин on 28.09.2021.
//

import Foundation

class StringsWizard {
    var sentence: String       //Variable which contains text to reverse
    init(sentence: String) {
        self.sentence = sentence
    }
    func isAlpha(char: Character) -> Bool {
        switch char {
        case "a"..."z":
            return true
        case "A"..."Z":
            return true
        default:
            return false
        }
    }
    func reverse(sentence: String) -> String {
        return sentence.split(separator: " ").map { String($0.reversed())}.joined(separator: " ")
    }
}
