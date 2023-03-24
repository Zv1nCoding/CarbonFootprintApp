//
//  File.swift
//  CarbonFootprint
//
//  Created by user233253 on 3/20/23.
//

import UIKit

class LeaderboardViewCell: UITableViewCell {
    
    var LeaderboardRanking = UILabel()
    var LeaderboardTitleLabel = UILabel()
    var LeaderboardImage = UIImageView()
    var LeaderboardFootprintLabel = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubview(LeaderboardRanking)
        addSubview(LeaderboardTitleLabel)
        addSubview(LeaderboardImage)
        addSubview(LeaderboardFootprintLabel)
        
       configureItems()
       setItemConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func configureItems(){
        LeaderboardImage.layer.cornerRadius = 10
        LeaderboardImage.clipsToBounds = true
        LeaderboardRanking.numberOfLines = 0
        LeaderboardRanking.adjustsFontSizeToFitWidth = true
        LeaderboardTitleLabel.numberOfLines = 0
        LeaderboardTitleLabel.adjustsFontSizeToFitWidth = true
        LeaderboardFootprintLabel.numberOfLines = 0
        LeaderboardFootprintLabel.adjustsFontSizeToFitWidth = true
    }
    
    func set(Leaderboards: Leaderboard) {
        LeaderboardRanking.text = Leaderboards.rank
        LeaderboardTitleLabel.text = Leaderboards.title
        LeaderboardImage.image = Leaderboards.image
        LeaderboardFootprintLabel.text = Leaderboards.carbonFootprint
    }
    
    func setItemConstraints() {
        LeaderboardRanking.translatesAutoresizingMaskIntoConstraints = false
        LeaderboardTitleLabel.translatesAutoresizingMaskIntoConstraints = false
        LeaderboardImage.translatesAutoresizingMaskIntoConstraints = false
        LeaderboardFootprintLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
        NSLayoutConstraint.activate([
            
            LeaderboardRanking.centerYAnchor.constraint(equalTo: centerYAnchor),
            LeaderboardRanking.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            LeaderboardRanking.heightAnchor.constraint(equalToConstant: 20),
            LeaderboardRanking.widthAnchor.constraint(equalTo: LeaderboardRanking.heightAnchor),
            
            LeaderboardImage.centerYAnchor.constraint(equalTo: centerYAnchor),
            LeaderboardImage.leadingAnchor.constraint(equalTo: LeaderboardRanking.trailingAnchor, constant: 10),
            LeaderboardImage.heightAnchor.constraint(equalToConstant: 60),
            LeaderboardImage.widthAnchor.constraint(equalTo: LeaderboardImage.heightAnchor),
            
            LeaderboardTitleLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            LeaderboardTitleLabel.leadingAnchor.constraint(equalTo: LeaderboardImage.trailingAnchor, constant: 20),
            LeaderboardTitleLabel.heightAnchor.constraint(equalToConstant: 80),
            LeaderboardTitleLabel.widthAnchor.constraint(equalToConstant: 100),
            
            LeaderboardFootprintLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            LeaderboardFootprintLabel.leadingAnchor.constraint(equalTo: LeaderboardTitleLabel.trailingAnchor, constant: 40),
            LeaderboardFootprintLabel.heightAnchor.constraint(equalToConstant: 80),
            LeaderboardFootprintLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            
            
            
        ])
        
    }
}
