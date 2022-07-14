//
//  KeyboardView.swift
//  CustomKeyboard2
//
//  Created by Martin on 14/07/2022.
//

import UIKit

class KeyboardView: UIInputView, NibView {

    @IBOutlet weak var view1: UIView!
    init() {
        super.init(frame: CGRect(), inputViewStyle: .keyboard)
        inflateView(from: "KeyboardView", locatedAt: .main)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        inflateView(from: "KeyboardView", locatedAt: .main)
        self.translatesAutoresizingMaskIntoConstraints = false
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIView.noIntrinsicMetric, height: self.intrinsicHeight)
    }
    
    var intrinsicHeight: CGFloat = 200 {
            didSet {
                self.invalidateIntrinsicContentSize()
            }
        }
    
    private func commonInit() {
        //
    }
    @IBAction func btnTapped(_ sender: Any) {
        view1.isHidden = !view1.isHidden
    }
    //
//    @IBAction func buttonTapped(_ sender: Any) {
//        onKeyTappedAction?("ha")
//        fakeView.isHidden = !fakeView.isHidden
//    }
//
//    @IBAction func closeButtonTapped(_ sender: Any) {
//        onCloseKeyTappedAction?()
//    }
    
    // MARK: - Observation block
    
    var onKeyTappedAction : ((_ keyword: String) -> ())?
    var onCloseKeyTappedAction : (() -> ())?
}
