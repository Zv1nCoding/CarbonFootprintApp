//
//  HomeViewCell.swift
//  CarbonFootprint
//
//  Created by user233253 on 3/6/23.
//

import UIKit

class HomeViewCell: UITableViewCell {
    
    
    var HomeTitleLabel = UILabel()
    var HomeImage = UIImageView()

    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(HomeTitleLabel)
        addSubview(HomeImage)
        
        configureTitleLabel()
        configureImageView()
        setTitleConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureTitleLabel() {
        HomeTitleLabel.numberOfLines = 0
        HomeTitleLabel.adjustsFontSizeToFitWidth = true
    }
    func configureImageView() {
        HomeImage.layer.cornerRadius = 10
        HomeImage.clipsToBounds = true
    }
    
    func set(home: Improvements) {
        HomeTitleLabel.text = home.title
        HomeImage.image = home.image
    }
    
    func setTitleConstraints() {
        HomeTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        HomeImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            HomeImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            HomeImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            HomeImage.heightAnchor.constraint(equalToConstant: 80),
            HomeImage.widthAnchor.constraint(equalTo: HomeImage.heightAnchor),
            
            HomeTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            HomeTitleLabel.leadingAnchor.constraint(equalTo: HomeImage.trailingAnchor, constant: 20),
            HomeTitleLabel.heightAnchor.constraint(equalToConstant: 80),
            HomeTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            
            
            
        ])
    }

}
