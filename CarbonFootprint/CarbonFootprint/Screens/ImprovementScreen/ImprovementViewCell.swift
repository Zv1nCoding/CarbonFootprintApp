//
//  HomeImprovementViewController.swift
//  CarbonFootprint
//
//  Created by user233253 on 3/15/23.
//

import UIKit

class ImprovementViewCell: UICollectionViewCell {

    let scrollView = UIScrollView()
    let Option1Button = CustomButton(title: "Testing", hasBackground: true, fontSize: .big)

    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        // Add the scroll view to the cell's content view
        contentView.addSubview(scrollView)
        contentView.addSubview(Option1Button)
        
        // Set the translatesAutoresizingMaskIntoConstraints property to false so we can set constraints manually
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        
        // Add any subviews that you want to be scrollable to the scroll view
        let label1 = UILabel()
        label1.text = "Item 1"
        scrollView.addSubview(label1)
        
        let label2 = UILabel()
        label2.text = "Item 2"
        scrollView.addSubview(label2)
        
        let label3 = UILabel()
        label3.text = "Item 3"
        scrollView.addSubview(label3)
        
        // Set the content size of the scroll view to the width of its content
        scrollView.contentSize = CGSize(width: label1.frame.width + label2.frame.width + label3.frame.width, height: scrollView.frame.height)
        
        // Set the constraints for the scroll view
        scrollView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        scrollView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
        scrollView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        scrollView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        scrollView.heightAnchor.constraint(equalTo: contentView.heightAnchor).isActive = true
        
        Option1Button.translatesAutoresizingMaskIntoConstraints = false
        Option1Button.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -8).isActive = true
        Option1Button.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16).isActive = true
        Option1Button.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16).isActive = true
        Option1Button.heightAnchor.constraint(equalToConstant: 40).isActive = true

        
        // Set the scroll view to scroll horizontally
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.isPagingEnabled = true
        scrollView.contentSize.width = label1.frame.width + label2.frame.width + label3.frame.width
        scrollView.alwaysBounceHorizontal = true
        scrollView.alwaysBounceVertical = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

