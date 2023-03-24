//
//  LeaderboardController.swift
//  CarbonFootprint
//
//  Created by user233253 on 2/27/23.
//

import UIKit
import SwiftUI

class ProgressController: UIViewController {
    
    var carbonFootprintText = 0.0
    let scrollView = UIScrollView()
    var contentView = UIView()
    let TextField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .medium)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.backgroundColor = .systemGreen
        label.layer.cornerRadius = 12
        label.layer.masksToBounds = true
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    func setupUI() {
        
        view.backgroundColor = .systemBackground
        
        AuthService.shared.fetchUser { [weak self] user, error in
            guard let self = self else {return}
            if let error = error {
                AlertManager.fetchingUserError(on: self, with: error)
                return
            }

            if let user = user {
                self.carbonFootprintText = user.carbonFootprint
                self.carbonFootprintText = round(self.carbonFootprintText * 100) / 100.0
                self.TextField.text = "Your current carbon footprint is \(self.carbonFootprintText) tonnes"
            }

        }
        let progressHistory = ProgressHistory()
        let controller = UIHostingController(rootView: progressHistory.edgesIgnoringSafeArea(.all))
        controller.view.translatesAutoresizingMaskIntoConstraints = false

        guard let progressView = controller.view else {
            return
        }

        
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        contentView.translatesAutoresizingMaskIntoConstraints = false
        progressView.translatesAutoresizingMaskIntoConstraints = false
        TextField.translatesAutoresizingMaskIntoConstraints = false

        
        view.addSubview(scrollView)
        scrollView.addSubview(contentView)
        contentView.addSubview(progressView)
        contentView.addSubview(TextField)
        
        
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),

            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
            progressView.topAnchor.constraint(equalTo:  contentView.topAnchor, constant: 10),
            progressView.heightAnchor.constraint(equalToConstant: 400),
            progressView.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            progressView.widthAnchor.constraint(equalToConstant: 350),
            
            TextField.topAnchor.constraint(equalTo:  progressView.bottomAnchor, constant: 10),
            TextField.heightAnchor.constraint(equalToConstant: 150),
            TextField.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            TextField.widthAnchor.constraint(equalToConstant: 350),
        ])
    }

}



