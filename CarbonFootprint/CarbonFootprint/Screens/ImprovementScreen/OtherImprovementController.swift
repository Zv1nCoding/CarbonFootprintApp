//
//  OtherImprovementController.swift
//  CarbonFootprint
//
//  Created by user233253 on 3/20/23.
//

import UIKit


class OtherImprovementController: UIViewController {
    
    var scrollView = UIScrollView()
    var contentView = UIView()
    
    let OtherImprovement1Button = CustomQuizButton(title: "Pack your own food", hasBackground: true, fontSize: .big, buttonColor: "Green")
    let OtherImprovement2Button = CustomQuizButton(title: "Rack/line dry your clothes", hasBackground: true, fontSize: .big, buttonColor: "Green")
    let OtherImprovement3Button = CustomQuizButton(title: "Grow your own fruit and vegetables", hasBackground: true, fontSize: .big, buttonColor: "Green")
    let OtherImprovement4Button = CustomQuizButton(title: "User reusable shopping bags", hasBackground: true, fontSize: .big, buttonColor: "Green")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        self.OtherImprovement1Button.addTarget(self, action: #selector(didTapOther1), for: .touchUpInside)
        self.OtherImprovement2Button.addTarget(self, action: #selector(didTapOther2), for: .touchUpInside)
        self.OtherImprovement3Button.addTarget(self, action: #selector(didTapOther3), for: .touchUpInside)
        self.OtherImprovement4Button.addTarget(self, action: #selector(didTapOther4), for: .touchUpInside)
        
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
        
        contentView.addSubview(OtherImprovement1Button)
        OtherImprovement1Button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            OtherImprovement1Button.topAnchor.constraint(equalTo:  contentView.topAnchor, constant: 10),
            OtherImprovement1Button.heightAnchor.constraint(equalToConstant: 150),
            OtherImprovement1Button.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            OtherImprovement1Button.widthAnchor.constraint(equalToConstant: 350),
        ])
        
        contentView.addSubview(OtherImprovement2Button)
        OtherImprovement2Button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            OtherImprovement2Button.topAnchor.constraint(equalTo:  OtherImprovement1Button.bottomAnchor, constant: 10),
            OtherImprovement2Button.heightAnchor.constraint(equalToConstant: 150),
            OtherImprovement2Button.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            OtherImprovement2Button.widthAnchor.constraint(equalToConstant: 350),
        ])
        
        contentView.addSubview(OtherImprovement3Button)
        OtherImprovement3Button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            OtherImprovement3Button.topAnchor.constraint(equalTo:  OtherImprovement2Button.bottomAnchor, constant: 10),
            OtherImprovement3Button.heightAnchor.constraint(equalToConstant: 150),
            OtherImprovement3Button.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            OtherImprovement3Button.widthAnchor.constraint(equalToConstant: 350),
        ])
        
        contentView.addSubview(OtherImprovement4Button)
        OtherImprovement4Button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            OtherImprovement4Button.topAnchor.constraint(equalTo:  OtherImprovement3Button.bottomAnchor, constant: 10),
            OtherImprovement4Button.heightAnchor.constraint(equalToConstant: 150),
            OtherImprovement4Button.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            OtherImprovement4Button.widthAnchor.constraint(equalToConstant: 350),
        ])
        
        // Set the content size of the scroll view
        contentView.bottomAnchor.constraint(equalTo: contentView.subviews.last!.bottomAnchor, constant: 20).isActive = true
    }
    @objc private func didTapOther1() {
        let vc = OtherImprovementText1Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOther2() {
        let vc = OtherImprovementText2Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOther3() {
        let vc = OtherImprovementText3Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOther4() {
        let vc = OtherImprovementText4Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
