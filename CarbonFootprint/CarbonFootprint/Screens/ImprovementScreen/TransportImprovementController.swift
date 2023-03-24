//
//  TransportImprovementController.swift
//  CarbonFootprint
//
//  Created by user233253 on 3/20/23.
//

import UIKit

class TransportImprovementController: UIViewController {
    
    var scrollView = UIScrollView()
    var contentView = UIView()
    
    let TransportImprovement1Button = CustomQuizButton(title: "Take the train instead of driving", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    let TransportImprovement2Button = CustomQuizButton(title: "Take a ferry instead of flying", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    let TransportImprovement3Button = CustomQuizButton(title: "Fly using a certified eco-friendly company", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    let TransportImprovement4Button = CustomQuizButton(title: "Attend a meeting remotely instead of flying", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        self.TransportImprovement1Button.addTarget(self, action: #selector(didTapTransport1), for: .touchUpInside)
        self.TransportImprovement2Button.addTarget(self, action: #selector(didTapTransport2), for: .touchUpInside)
        self.TransportImprovement3Button.addTarget(self, action: #selector(didTapTransport3), for: .touchUpInside)
        self.TransportImprovement4Button.addTarget(self, action: #selector(didTapTransport4), for: .touchUpInside)
        
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
        
        contentView.addSubview(TransportImprovement1Button)
        TransportImprovement1Button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            TransportImprovement1Button.topAnchor.constraint(equalTo:  contentView.topAnchor, constant: 10),
            TransportImprovement1Button.heightAnchor.constraint(equalToConstant: 150),
            TransportImprovement1Button.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            TransportImprovement1Button.widthAnchor.constraint(equalToConstant: 350),
        ])
        
        contentView.addSubview(TransportImprovement2Button)
        TransportImprovement2Button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            TransportImprovement2Button.topAnchor.constraint(equalTo:  TransportImprovement1Button.bottomAnchor, constant: 10),
            TransportImprovement2Button.heightAnchor.constraint(equalToConstant: 150),
            TransportImprovement2Button.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            TransportImprovement2Button.widthAnchor.constraint(equalToConstant: 350),
        ])
        
        contentView.addSubview(TransportImprovement3Button)
        TransportImprovement3Button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            TransportImprovement3Button.topAnchor.constraint(equalTo:  TransportImprovement2Button.bottomAnchor, constant: 10),
            TransportImprovement3Button.heightAnchor.constraint(equalToConstant: 150),
            TransportImprovement3Button.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            TransportImprovement3Button.widthAnchor.constraint(equalToConstant: 350),
        ])
        
        contentView.addSubview(TransportImprovement4Button)
        TransportImprovement4Button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            TransportImprovement4Button.topAnchor.constraint(equalTo:  TransportImprovement3Button.bottomAnchor, constant: 10),
            TransportImprovement4Button.heightAnchor.constraint(equalToConstant: 150),
            TransportImprovement4Button.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            TransportImprovement4Button.widthAnchor.constraint(equalToConstant: 350),
        ])
        
        // Set the content size of the scroll view
        contentView.bottomAnchor.constraint(equalTo: contentView.subviews.last!.bottomAnchor, constant: 20).isActive = true
    }
    @objc private func didTapTransport1() {
        let vc = TransportImprovementText1Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapTransport2() {
        let vc = TransportImprovementText2Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapTransport3() {
        let vc = TransportImprovementText3Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapTransport4() {
        let vc = TransportImprovementText4Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
