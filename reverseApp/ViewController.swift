//
//  ViewController.swift
//  reverseApp
//
//  Created by Дмитрий Фетюхин on 11.09.2021.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    private let exceptionWordViewController = ExceptionWordViewController()
    public var selectedSegment = 0 // state of segmentedControl
    
    // MARK: - Styles
    
    private let defaultCornerRadius = 10
    private let invisible = 0.0
    private let visible = 1.0
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var resultButton: UIButton!
    @IBOutlet weak var reversedText: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var fieldContainerView: UIView! // a view that will contain xib element
    
    /*override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }*/
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reversedText.alpha = CGFloat(invisible)     // first UILabel must be invisible
        fieldContainerView.backgroundColor = UIColor.white // makes superview for ignore textField invisible
        resultButton.layer.cornerRadius = CGFloat(defaultCornerRadius) // makes corners rounded
    }

    // MARK: - IBActions
    
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            reversedText.text = ""
            reversedText.alpha = CGFloat(invisible)
            infoLabel.alpha = CGFloat(visible)
            exceptionWordViewController.view.removeFromSuperview()
            selectedSegment = 0
        } else {
            infoLabel.alpha = CGFloat(invisible)
            reversedText.text = ""
            reversedText.alpha = CGFloat(invisible)
            if self.fieldContainerView.subviews.isEmpty {
                self.fieldContainerView.addSubview(exceptionWordViewController.view)
            }
            selectedSegment = 1
        }
    }
    
    
    @IBAction func resultButtonPressed(_ sender: UIButton) {
        let sentence = StringsWizard(sentence: textField.text!)   // sentence is a class object
        
        if selectedSegment == 0 {
            reversedText.text = sentence.reverseWhenDefault(sentence: textField.text!)
            reversedText.alpha = CGFloat(visible)    // text appears
        } else {
            let exceptionText = exceptionWordViewController.ignoreTextField.text
            reversedText.text = sentence.reverseWhenCustom(sentence: textField.text!, ignoreText: exceptionText!)
            reversedText.alpha = CGFloat(visible)    // text appears
        }
    }
    
}

