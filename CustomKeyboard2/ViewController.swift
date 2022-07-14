//
//  ViewController.swift
//  CustomKeyboard2
//
//  Created by Martin on 14/07/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textfield: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let keyboardView = KeyboardView()
        keyboardView.translatesAutoresizingMaskIntoConstraints = true
        keyboardView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        keyboardView.onKeyTappedAction = { [weak self] (keyword) in
            guard let self = self else { return }
            print("keyword = ",keyword)
            self.textfield.text = (self.textfield.text ?? "") + keyword
        }
        keyboardView.onCloseKeyTappedAction = { [weak self] in
            guard let self = self else { return }
//            var string: String = ""
//            if self.textfield.text == "" {
//                string = ""
//            } else {
//                string = self.textfield.text ?? ""
//            }
//            self.textfield.text = "\(string.dropLast())"
            
            self.textfield.deleteBackward()
        }
        textfield.inputView = keyboardView
    }
}

