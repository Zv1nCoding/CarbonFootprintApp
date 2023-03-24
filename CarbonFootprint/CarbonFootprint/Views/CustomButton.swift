//
//  CustomButton.swift
//  CarbonFootprint
//
//  Created by user233253 on 2/8/23.
//

import UIKit

class CustomButton: UIButton {

    enum FontSize {
        case big
        case medium
        case small
    }
    
    
    init(title: String, hasBackground: Bool = false, fontSize: FontSize) {
        super.init(frame: .zero)
        self.setTitle(title, for: .normal)
        self.layer.cornerRadius = 12
        self.layer.masksToBounds = true
        
//        let newblue = UIColor(red: 122/255.0, green: 184/255.0, blue: 255/255.0, alpha: 1)
        
        self.backgroundColor = hasBackground ? UIColor(red: 122/255.0, green: 184/255.0, blue: 255/255.0, alpha: 1) : .clear
        
        let titleColor: UIColor = hasBackground ? .label: .label
        self.setTitleColor(titleColor, for: .normal)
        
        switch fontSize {
        case .big:
            self.titleLabel?.font = .systemFont(ofSize: 22, weight: .bold)
        case .medium:
            self.titleLabel?.font = .systemFont(ofSize: 18, weight: .semibold)
        case .small:
            self.titleLabel?.font = .systemFont(ofSize: 16, weight: .regular)
            
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
