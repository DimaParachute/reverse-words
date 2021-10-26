//
//  ExceptionWordViewController.swift
//  reverseApp
//
//  Created by Дмитрий Фетюхин on 09.10.2021.
//
import UIKit

class ExceptionWordViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var ignoreTextField: UITextField!
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
}
