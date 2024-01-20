//
//  MyButton.swift
//  ExComputedProperty
//
//  Created by 김종권 on 2024/01/20.
//

import UIKit

class ButtonWithImageView: UIView {
    private lazy var button = {
        let button = MyButton(titleText: buttonTitleText)
        button.setTitle("button", for: .normal)
        button.setTitleColor(.systemBlue, for: .normal)
        button.setTitleColor(.blue, for: .highlighted)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private let imageView = {
        let view = UIImageView()
        view.image = UIImage(systemName: "circle")
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
//    var buttonTitleText: String
    var buttonTitleText: String {
        get { button.titleText }
        set { button.titleText = newValue }
    }
    
    init(buttonTitleText: String) {
        super.init(frame: .zero)
        self.buttonTitleText = buttonTitleText
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    private func setupUI() {
        // layout...
    }
}

class MyButton: UIButton {
    var titleText: String
    
    init(titleText: String) {
        self.titleText = titleText
        super.init(frame: .zero)
        setTitle(titleText, for: .normal)
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
