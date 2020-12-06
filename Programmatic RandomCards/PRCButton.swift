//
//  PRCButton.swift
//  Programmatic RandomCards
//
//  Created by Muhammad Fakhrulghazi bin Mohd Fouad on 05/12/2020.
//

import UIKit

class PRCButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    //if u wanna initialise this button using storyboard. apple gives this
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //creates a custom initiliser that takes in a background color and title as parameter when we initialise pcrbutton so that anytime we crate pcrbutton we it give title and background color
    init(backgroundColour: UIColor, title: String) {
        //anytime we create init we need to call super
        //frame can be zero zero because we using constrainst later.
        super.init(frame: .zero)
        self.backgroundColor = backgroundColour
        setTitle(title, for: .normal)
        configure()
    }
    
    //configure button
    func configure() {
        layer.cornerRadius = 8
        titleLabel?.font = .systemFont(ofSize: 19, weight: .bold)
        setTitleColor(.white, for: .normal)
        translatesAutoresizingMaskIntoConstraints = false
    }

}
