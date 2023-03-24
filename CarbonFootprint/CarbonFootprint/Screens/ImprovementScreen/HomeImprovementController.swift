//
//  HomeImprovement1Controller.swift
//  CarbonFootprint
//
//  Created by user233253 on 3/20/23.
//

import UIKit

class HomeImprovementController: UIViewController {
    
    var scrollView = UIScrollView()
    var contentView = UIView()
    
    let HomeImprovement1Button = CustomQuizButton(title: "Put secondary glazing panels on your windows", hasBackground: true, fontSize: .big, buttonColor: "Red")
    let HomeImprovement2Button = CustomQuizButton(title: "Tape your window frames with insulation tape", hasBackground: true, fontSize: .big, buttonColor: "Red")
    let HomeImprovement3Button = CustomQuizButton(title: "Switch to LED bulbs, when your old ones die", hasBackground: true, fontSize: .big, buttonColor: "Red")
    let HomeImprovement4Button = CustomQuizButton(title: "Bleed the radiators", hasBackground: true, fontSize: .big, buttonColor: "Red")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        self.HomeImprovement1Button.addTarget(self, action: #selector(didTapHome1), for: .touchUpInside)
        self.HomeImprovement2Button.addTarget(self, action: #selector(didTapHome2), for: .touchUpInside)
        self.HomeImprovement3Button.addTarget(self, action: #selector(didTapHome3), for: .touchUpInside)
        self.HomeImprovement4Button.addTarget(self, action: #selector(didTapHome4), for: .touchUpInside)
        
    }
    private func setupUI(){
        view.backgroundColor = .systemBackground
        // Create the scroll view
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView.addSubview(contentView)
        NSLayoutConstraint.activate([
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
        ])
        
        contentView.addSubview(HomeImprovement1Button)
        HomeImprovement1Button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            HomeImprovement1Button.topAnchor.constraint(equalTo:  contentView.topAnchor, constant: 10),
            HomeImprovement1Button.heightAnchor.constraint(equalToConstant: 150),
            HomeImprovement1Button.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            HomeImprovement1Button.widthAnchor.constraint(equalToConstant: 350),
        ])
        
        contentView.addSubview(HomeImprovement2Button)
        HomeImprovement2Button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            HomeImprovement2Button.topAnchor.constraint(equalTo:  HomeImprovement1Button.bottomAnchor, constant: 10),
            HomeImprovement2Button.heightAnchor.constraint(equalToConstant: 150),
            HomeImprovement2Button.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            HomeImprovement2Button.widthAnchor.constraint(equalToConstant: 350),
        ])
        
        contentView.addSubview(HomeImprovement3Button)
        HomeImprovement3Button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            HomeImprovement3Button.topAnchor.constraint(equalTo:  HomeImprovement2Button.bottomAnchor, constant: 10),
            HomeImprovement3Button.heightAnchor.constraint(equalToConstant: 150),
            HomeImprovement3Button.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            HomeImprovement3Button.widthAnchor.constraint(equalToConstant: 350),
        ])
        
        contentView.addSubview(HomeImprovement4Button)
        HomeImprovement4Button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            HomeImprovement4Button.topAnchor.constraint(equalTo:  HomeImprovement3Button.bottomAnchor, constant: 10),
            HomeImprovement4Button.heightAnchor.constraint(equalToConstant: 150),
            HomeImprovement4Button.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            HomeImprovement4Button.widthAnchor.constraint(equalToConstant: 350),
        ])
        
        // Set the content size of the scroll view
        contentView.bottomAnchor.constraint(equalTo: contentView.subviews.last!.bottomAnchor, constant: 20).isActive = true
    }
    @objc private func didTapHome1() {
        let vc = HomeImprovementText1Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapHome2() {
        let vc = HomeImprovementText2Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapHome3() {
        let vc = HomeImprovementText3Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapHome4() {
        let vc = HomeImprovementText4Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

