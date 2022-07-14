//
//  KeyboardView.swift
//  CustomKeyboard2
//
//  Created by Martin on 14/07/2022.
//

import UIKit

class KeyboardView: UIView, NibView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        inflateView(from: "KeyboardView", locatedAt: .main)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        inflateView(from: "KeyboardView", locatedAt: .main)
    }
    
    private func commonInit() {
        //
    }
    
    @IBAction func buttonTapped(_ sender: Any) {
        onKeyTappedAction?("ha")
    }
    
    @IBAction func closeButtonTapped(_ sender: Any) {
        onCloseKeyTappedAction?()
    }
    
    // MARK: - Observation block
    
    var onKeyTappedAction : ((_ keyword: String) -> ())?
    var onCloseKeyTappedAction : (() -> ())?
}
