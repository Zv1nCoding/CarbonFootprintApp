//
//  HomeImprovementTextController.swift
//  CarbonFootprint
//
//  Created by user233253 on 3/20/23.
//

import UIKit

class TransportImprovementText1Controller: UIViewController {

    private let TextField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .medium)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Reducing the amount of times you use a car can not only reduce you emissions but also save you a bit of money, as generally train transport is cheaper than having to buy fuel"
        return label
    }()
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Have you started travelling by train recently?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "Yes", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    private let Option2Button = CustomQuizButton(title: "No", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        self.Option1Button.addTarget(self, action: #selector(didTapOption1), for: .touchUpInside)
        self.Option2Button.addTarget(self, action: #selector(didTapOption2), for: .touchUpInside)
    }
    
    private func setupUI() {
        self.view.backgroundColor = .systemBackground
        
        self.view.addSubview(TextField)
        self.view.addSubview(QuestionField)
        self.view.addSubview(Option1Button)
        self.view.addSubview(Option2Button)
        
        TextField.translatesAutoresizingMaskIntoConstraints = false
        QuestionField.translatesAutoresizingMaskIntoConstraints = false
        Option1Button.translatesAutoresizingMaskIntoConstraints = false
        Option2Button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.TextField.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor),
            self.TextField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10),
            self.TextField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),
            self.TextField.heightAnchor.constraint(equalToConstant: 120),
            
            self.QuestionField.topAnchor.constraint(equalTo: TextField.layoutMarginsGuide.bottomAnchor),
            self.QuestionField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10),
            self.QuestionField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),
            self.QuestionField.heightAnchor.constraint(equalToConstant: 120),
            
            self.Option1Button.topAnchor.constraint(equalTo: QuestionField.bottomAnchor, constant: 22),
            self.Option1Button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 15),
            self.Option1Button.heightAnchor.constraint(equalToConstant: 55),
            self.Option1Button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.45),
            
            self.Option2Button.topAnchor.constraint(equalTo: QuestionField.bottomAnchor, constant: 22),
            self.Option2Button.leadingAnchor.constraint(equalTo: Option1Button.trailingAnchor, constant: 15),
            self.Option2Button.heightAnchor.constraint(equalToConstant: 55),
            self.Option2Button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.45),
            
        ])
    }
    @objc private func didTapOption1() {
        TransportFootprint = TransportFootprint - 1.3
        let vc = ImprovementsController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        TransportFootprint = TransportFootprint - 1.8
        let vc = ImprovementsController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

class TransportImprovementText2Controller: UIViewController {

    private let TextField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .medium)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "The average reduction between a flight and ferry travel can result for an up to 88% of reduction in your carbon footprint for the journey"
        return label
    }()
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Have you travelled via ferry instead of plane recently?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "Yes", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    private let Option2Button = CustomQuizButton(title: "No", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        self.Option1Button.addTarget(self, action: #selector(didTapOption1), for: .touchUpInside)
        self.Option2Button.addTarget(self, action: #selector(didTapOption2), for: .touchUpInside)
    }
    
    private func setupUI() {
        self.view.backgroundColor = .systemBackground
        
        self.view.addSubview(TextField)
        self.view.addSubview(QuestionField)
        self.view.addSubview(Option1Button)
        self.view.addSubview(Option2Button)
        
        TextField.translatesAutoresizingMaskIntoConstraints = false
        QuestionField.translatesAutoresizingMaskIntoConstraints = false
        Option1Button.translatesAutoresizingMaskIntoConstraints = false
        Option2Button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.TextField.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor),
            self.TextField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10),
            self.TextField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),
            self.TextField.heightAnchor.constraint(equalToConstant: 120),
            
            self.QuestionField.topAnchor.constraint(equalTo: TextField.layoutMarginsGuide.bottomAnchor),
            self.QuestionField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10),
            self.QuestionField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),
            self.QuestionField.heightAnchor.constraint(equalToConstant: 120),
            
            self.Option1Button.topAnchor.constraint(equalTo: QuestionField.bottomAnchor, constant: 22),
            self.Option1Button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 15),
            self.Option1Button.heightAnchor.constraint(equalToConstant: 55),
            self.Option1Button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.45),
            
            self.Option2Button.topAnchor.constraint(equalTo: QuestionField.bottomAnchor, constant: 22),
            self.Option2Button.leadingAnchor.constraint(equalTo: Option1Button.trailingAnchor, constant: 15),
            self.Option2Button.heightAnchor.constraint(equalToConstant: 55),
            self.Option2Button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.45),
            
        ])
    }
    @objc private func didTapOption1() {
        TransportFootprint = TransportFootprint - 1.3
        let vc = ImprovementsController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        TransportFootprint = TransportFootprint - 1.8
        let vc = ImprovementsController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
class TransportImprovementText3Controller: UIViewController {

    private let TextField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .medium)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "If you do not have the time to travel via other means, choosing a certified eco-friendly company can still help reduce your carbon footprint"
        return label
    }()
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Have you flown with a certified eco-friendly company recently?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "Yes", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    private let Option2Button = CustomQuizButton(title: "No", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        self.Option1Button.addTarget(self, action: #selector(didTapOption1), for: .touchUpInside)
        self.Option2Button.addTarget(self, action: #selector(didTapOption2), for: .touchUpInside)
    }
    
    private func setupUI() {
        self.view.backgroundColor = .systemBackground
        
        self.view.addSubview(TextField)
        self.view.addSubview(QuestionField)
        self.view.addSubview(Option1Button)
        self.view.addSubview(Option2Button)
        
        TextField.translatesAutoresizingMaskIntoConstraints = false
        QuestionField.translatesAutoresizingMaskIntoConstraints = false
        Option1Button.translatesAutoresizingMaskIntoConstraints = false
        Option2Button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.TextField.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor),
            self.TextField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10),
            self.TextField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),
            self.TextField.heightAnchor.constraint(equalToConstant: 120),
            
            self.QuestionField.topAnchor.constraint(equalTo: TextField.layoutMarginsGuide.bottomAnchor),
            self.QuestionField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10),
            self.QuestionField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),
            self.QuestionField.heightAnchor.constraint(equalToConstant: 120),
            
            self.Option1Button.topAnchor.constraint(equalTo: QuestionField.bottomAnchor, constant: 22),
            self.Option1Button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 15),
            self.Option1Button.heightAnchor.constraint(equalToConstant: 55),
            self.Option1Button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.45),
            
            self.Option2Button.topAnchor.constraint(equalTo: QuestionField.bottomAnchor, constant: 22),
            self.Option2Button.leadingAnchor.constraint(equalTo: Option1Button.trailingAnchor, constant: 15),
            self.Option2Button.heightAnchor.constraint(equalToConstant: 55),
            self.Option2Button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.45),
            
        ])
    }
    @objc private func didTapOption1() {
        TransportFootprint = TransportFootprint - 1.3
        let vc = ImprovementsController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        TransportFootprint = TransportFootprint - 1.8
        let vc = ImprovementsController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

class TransportImprovementText4Controller: UIViewController {

    private let TextField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .medium)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Attending meetings remotely can not only help you reduce your carbon footprint but it can also save you time and money"
        return label
    }()
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Have you attended a meeting in another country remotely instead of in person?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "Yes", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    private let Option2Button = CustomQuizButton(title: "No", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        self.Option1Button.addTarget(self, action: #selector(didTapOption1), for: .touchUpInside)
        self.Option2Button.addTarget(self, action: #selector(didTapOption2), for: .touchUpInside)
    }
    
    private func setupUI() {
        self.view.backgroundColor = .systemBackground
        
        self.view.addSubview(TextField)
        self.view.addSubview(QuestionField)
        self.view.addSubview(Option1Button)
        self.view.addSubview(Option2Button)
        
        TextField.translatesAutoresizingMaskIntoConstraints = false
        QuestionField.translatesAutoresizingMaskIntoConstraints = false
        Option1Button.translatesAutoresizingMaskIntoConstraints = false
        Option2Button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.TextField.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor),
            self.TextField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10),
            self.TextField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),
            self.TextField.heightAnchor.constraint(equalToConstant: 120),
            
            self.QuestionField.topAnchor.constraint(equalTo: TextField.layoutMarginsGuide.bottomAnchor),
            self.QuestionField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10),
            self.QuestionField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),
            self.QuestionField.heightAnchor.constraint(equalToConstant: 120),
            
            self.Option1Button.topAnchor.constraint(equalTo: QuestionField.bottomAnchor, constant: 22),
            self.Option1Button.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 15),
            self.Option1Button.heightAnchor.constraint(equalToConstant: 55),
            self.Option1Button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.45),
            
            self.Option2Button.topAnchor.constraint(equalTo: QuestionField.bottomAnchor, constant: 22),
            self.Option2Button.leadingAnchor.constraint(equalTo: Option1Button.trailingAnchor, constant: 15),
            self.Option2Button.heightAnchor.constraint(equalToConstant: 55),
            self.Option2Button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.45),
            
        ])
    }
    @objc private func didTapOption1() {
        TransportFootprint = TransportFootprint - 1.3
        let vc = ImprovementsController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        TransportFootprint = TransportFootprint - 1.8
        let vc = ImprovementsController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

