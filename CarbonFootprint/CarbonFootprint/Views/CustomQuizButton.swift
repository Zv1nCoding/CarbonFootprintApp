//
//  CustomQuizButton.swift
//  CarbonFootprint
//
//  Created by user233253 on 3/9/23.
//

import UIKit

class CustomQuizButton: UIButton {

    enum FontSize {
        case big
        case medium
        case small
    }
    
    init(title: String, hasBackground: Bool = false, fontSize: FontSize, buttonColor: String) {
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.layer.cornerRadius = 12
        self.layer.masksToBounds = true
        self.titleLabel?.numberOfLines = 0
        self.titleLabel?.lineBreakMode = .byWordWrapping
        
        let titleColor: UIColor = hasBackground ? .white: .systemRed
        self.setTitleColor(titleColor, for: .normal)
        
        switch fontSize {
        case .big:
            self.titleLabel?.font = .systemFont(ofSize: 22, weight: .bold)
        case .medium:
            self.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        case .small:
            self.titleLabel?.font = .systemFont(ofSize: 16, weight: .regular)
            
        }
        
        if buttonColor == "Red" {
            self.backgroundColor = UIColor(red: 179/255.0, green: 0/255.0, blue: 0/255.0, alpha: 1)        }
        else if buttonColor == "Blue" {
            self.backgroundColor = UIColor(red: 0/255.0, green: 84/255.0, blue: 173/255.0, alpha: 1)
        }
        else if buttonColor == "Green" {
            self.backgroundColor = UIColor(red: 2/255.0, green: 97/255.0, blue: 0/255.0, alpha: 1)
        }
        else if buttonColor == "Purple" {
            self.backgroundColor = UIColor(red: 143/255.0, green: 0/255.0, blue: 131/255.0, alpha: 1)
        }
        else {
            self.backgroundColor = .systemGray
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
