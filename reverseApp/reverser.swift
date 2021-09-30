//
//  reverser.swift
//  reverseApp
//
//  Created by Дмитрий Фетюхин on 28.09.2021.
//

import Foundation

class reverserClass {
    var sentence: String       //Variable which contains text to reverse
    init(sentence: String) {
        self.sentence = sentence
    }
    func reverseFunc(sentence: String) -> String {
        return sentence.split(separator: " ").map { String($0.reversed())}.joined(separator: " ")
    }
}
