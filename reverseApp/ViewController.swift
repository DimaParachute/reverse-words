//
//  ViewController.swift
//  reverseApp
//
//  Created by Дмитрий Фетюхин on 11.09.2021.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - IBOutlets
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var resultButton: UIButton!
    @IBOutlet weak var reversedText: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        reversedText.alpha = 0.0     // First UILabel must be invisible
    }
    
    // MARK: - IBActions
    
    @IBAction func resultButtonPressed(_ sender: UIButton) {
        reversedText.text = textField.text!.split(separator: " ").map { String($0.reversed())}.joined(separator: " ")
        reversedText.alpha = 1.0    // Text appears
    }
    
}

