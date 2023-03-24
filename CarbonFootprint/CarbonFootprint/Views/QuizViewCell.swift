//
//  QuizViewCell.swift
//  CarbonFootprint
//
//  Created by user233253 on 3/6/23.
//
import UIKit

class QuizViewCell: UITableViewCell {
    
    var QuizTitleLabel = UILabel()
    var QuizImage = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(QuizTitleLabel)
        addSubview(QuizImage)
        
        configureTitleLabel()
        configureImageView()
        setTitleConstraints()
        //setImageConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureTitleLabel() {
        QuizTitleLabel.numberOfLines = 0
        QuizTitleLabel.adjustsFontSizeToFitWidth = true
    }
    func configureImageView() {
        QuizImage.layer.cornerRadius = 10
        QuizImage.clipsToBounds = true
    }
    
    func set(improvements: Improvements) {
        QuizTitleLabel.text = improvements.title
        QuizImage.image = improvements.image
    }
    
    func setTitleConstraints() {
        QuizTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        QuizImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            QuizImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            QuizImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            QuizImage.heightAnchor.constraint(equalToConstant: 80),
            QuizImage.widthAnchor.constraint(equalTo: QuizImage.heightAnchor),
            
            QuizTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            QuizTitleLabel.leadingAnchor.constraint(equalTo: QuizImage.trailingAnchor, constant: 20),
            QuizTitleLabel.heightAnchor.constraint(equalToConstant: 80),
            QuizTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            
            
            
        ])
        
    }
    
}
