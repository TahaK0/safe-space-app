//
//  FloatingLabelTextField.swift
//  Safe Space
//
//  Created by Taha Karakaş on 7.08.2024.
//

import Foundation
import UIKit

class FloatingLabelTextField: UITextField {

    private let floatingLabel: UILabel = UILabel(frame: CGRect.zero)
    
    override var placeholder: String? {
        didSet {
            floatingLabel.text = placeholder
            floatingLabel.sizeToFit()
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }

    private func setup() {
        floatingLabel.alpha = 1.0
        floatingLabel.font = UIFont.systemFont(ofSize: 12)
        floatingLabel.textColor = .gray
        self.addSubview(floatingLabel)
        
        // Initial position for the floating label
        floatingLabel.frame.origin.x = 0
        floatingLabel.frame.origin.y = -floatingLabel.frame.height
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        // Update the position of the floating label
        floatingLabel.frame.origin.x = 0
        floatingLabel.frame.origin.y = -floatingLabel.frame.height
    }

    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0))
    }

    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: UIEdgeInsets(top: 20, left: 0, bottom: 0, right: 0))
    }
}
