//
//  ViewController.swift
//  reverseApp
//
//  Created by Дмитрий Фетюхин on 11.09.2021.
//

import UIKit

class ViewController: UIViewController {

    private let exceptionWordViewController = ExceptionWordViewController()
    private var selectedSegment = 0
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var resultButton: UIButton!
    @IBOutlet weak var reversedText: UILabel!
    @IBOutlet weak var infoLabel: UILabel!
    @IBOutlet weak var fieldContainerView: UIView! // a view that will contain xib element
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        reversedText.alpha = 0.0     // first UILabel must be invisible
        //segmentControl.addTarget(self, action: "segmentChanged:", for: .valueChanged)
        fieldContainerView.backgroundColor = UIColor.white // makes superview for ignore textField invisible
        resultButton.layer.cornerRadius = 10 // makes corners rounded
    }
    
    // MARK: - IBActions
    
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            infoLabel.alpha = 1
            exceptionWordViewController.view.removeFromSuperview()
            selectedSegment = 0
        } else {
            infoLabel.alpha = 0
            if self.fieldContainerView.subviews.isEmpty {
                self.fieldContainerView.addSubview(exceptionWordViewController.view)
            }
            selectedSegment = 1
        }
    }
    
    
    @IBAction func resultButtonPressed(_ sender: UIButton) {
        let sentence = StringsWizard(sentence: textField.text!)   // sentence is a class object
        if selectedSegment == 0 {
            reversedText.text = sentence.reverse(sentence: textField.text!)
            reversedText.alpha = 1.0    // text appears
        } else {
            
        }
    }
    
}

