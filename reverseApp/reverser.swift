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
    
    // a function that checks whether a character is alphabetic
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
    
    // when segmentedControl == 0
    func reverseWhenDefault(sentence: String) -> String {
        var letters: Array<Character>
        var helper: Character
        var number: Int // a counter from beginning of word
        var count: Int // a counter from end of word
        var result = ""
        let words = sentence.split(separator: " ")
        for i in words {
            letters = Array(i)
            number = 0
            count = letters.count-1
            while number <= count {
                if isAlpha(char: letters[number]) == true {
                    if isAlpha(char: letters[count]) == true {
                        helper = letters[number]
                        letters[number] = letters[count]
                        letters[count] = helper
                        count -= 1
                        number += 1
                    } else {
                        count -= 1
                    }
                } else {
                    number += 1
                }
            }
            result += String(letters) + " "
        }
        result = String(result.dropLast()) // deletes excess whitespace
        print(result)
        return result
    }
    
    // when segmentedControl == 1
    func reverseWhenCustom(sentence: String, ignoreText: String) -> String {
        var letters: Array<Character>
        var helper: Character
        var number: Int
        var count: Int
        var result = ""
        var checker = 0
        let words = sentence.split(separator: " ")
        let ignoreLetters = Array(ignoreText)
        for i in words {
            letters = Array(i)
            number = 0
            count = letters.count-1
            while number <= count {
                for j in ignoreLetters {
                    if letters[number] != j {
                        if letters[count] != j {
                            checker += 1
                            if checker == 3 {
                                helper = letters[number]
                                letters[number] = letters[count]
                                letters[count] = helper
                                count -= 1
                                number += 1
                                checker = 0
                            }
                        } else {
                            count -= 1
                        }
                    } else {
                        number += 1
                    }
                }
            }
            result += String(letters) + " "
        }
        result = String(result.dropLast()) // deletes excess whitespace
        return result
    }
    
}
