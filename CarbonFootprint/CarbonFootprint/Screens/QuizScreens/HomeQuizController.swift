//
//  ViewController.swift
//  CarbonFootprint
//
//  Created by user233253 on 2/6/23.
//

import UIKit

var HomeFootprint = 0.0
var didHome = false

class HomeQuizController: UIViewController {
    //var delegate
    
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Do you generate any of your own energy?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "Wind", hasBackground: true, fontSize: .big, buttonColor: "Red")
    private let Option2Button = CustomQuizButton(title: "Solar", hasBackground: true, fontSize: .big, buttonColor: "Red")
    private let Option3Button = CustomQuizButton(title: "Hydropower", hasBackground: true, fontSize: .big, buttonColor: "Red")
    private let Option4Button = CustomQuizButton(title: "None", hasBackground: true, fontSize: .big, buttonColor: "Red")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        self.Option1Button.addTarget(self, action: #selector(didTapOption1), for: .touchUpInside)
        self.Option2Button.addTarget(self, action: #selector(didTapOption2), for: .touchUpInside)
        self.Option3Button.addTarget(self, action: #selector(didTapOption3), for: .touchUpInside)
        self.Option4Button.addTarget(self, action: #selector(didTapOption4), for: .touchUpInside)
    }
    
    private func setupUI() {
        self.view.backgroundColor = .systemBackground
        
        self.view.addSubview(QuestionField)
        self.view.addSubview(Option1Button)
        self.view.addSubview(Option2Button)
        self.view.addSubview(Option3Button)
        self.view.addSubview(Option4Button)
        
        QuestionField.translatesAutoresizingMaskIntoConstraints = false
        Option1Button.translatesAutoresizingMaskIntoConstraints = false
        Option2Button.translatesAutoresizingMaskIntoConstraints = false
        Option3Button.translatesAutoresizingMaskIntoConstraints = false
        Option4Button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.QuestionField.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor),
            self.QuestionField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.QuestionField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.QuestionField.heightAnchor.constraint(equalToConstant: 120),
            
            self.Option1Button.topAnchor.constraint(equalTo: QuestionField.bottomAnchor, constant: 22),
            self.Option1Button.centerXAnchor.constraint(equalTo: QuestionField.centerXAnchor),
            self.Option1Button.heightAnchor.constraint(equalToConstant: 55),
            self.Option1Button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            self.Option2Button.topAnchor.constraint(equalTo: Option1Button.bottomAnchor, constant: 22),
            self.Option2Button.centerXAnchor.constraint(equalTo: QuestionField.centerXAnchor),
            self.Option2Button.heightAnchor.constraint(equalToConstant: 55),
            self.Option2Button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            self.Option3Button.topAnchor.constraint(equalTo: Option2Button.bottomAnchor, constant: 22),
            self.Option3Button.centerXAnchor.constraint(equalTo: QuestionField.centerXAnchor),
            self.Option3Button.heightAnchor.constraint(equalToConstant: 55),
            self.Option3Button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            self.Option4Button.topAnchor.constraint(equalTo: Option3Button.bottomAnchor, constant: 22),
            self.Option4Button.centerXAnchor.constraint(equalTo: QuestionField.centerXAnchor),
            self.Option4Button.heightAnchor.constraint(equalToConstant: 55),
            self.Option4Button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
        ])
    }
    @objc private func didTapOption1() {
        HomeFootprint = HomeFootprint - 1.3
        let vc = Quiz2Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        HomeFootprint = HomeFootprint - 1.8
        let vc = Quiz2Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption3() {
        HomeFootprint = HomeFootprint - 0.09
        let vc = Quiz2Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption4() {
        let vc = Quiz2Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

class Quiz2Controller: UIViewController {
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "How many bedrooms does your home have?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "None", hasBackground: true, fontSize: .big, buttonColor: "Red")
    private let Option2Button = CustomQuizButton(title: "1-2", hasBackground: true, fontSize: .big, buttonColor: "Red")
    private let Option3Button = CustomQuizButton(title: "3-4", hasBackground: true, fontSize: .big, buttonColor: "Red")
    private let Option4Button = CustomQuizButton(title: "5+", hasBackground: true, fontSize: .big, buttonColor: "Red")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        self.Option1Button.addTarget(self, action: #selector(didTapOption1), for: .touchUpInside)
        self.Option2Button.addTarget(self, action: #selector(didTapOption2), for: .touchUpInside)
        self.Option3Button.addTarget(self, action: #selector(didTapOption3), for: .touchUpInside)
        self.Option4Button.addTarget(self, action: #selector(didTapOption4), for: .touchUpInside)
    }
    
    private func setupUI() {
        self.view.backgroundColor = .systemBackground
        
        self.view.addSubview(QuestionField)
        self.view.addSubview(Option1Button)
        self.view.addSubview(Option2Button)
        self.view.addSubview(Option3Button)
        self.view.addSubview(Option4Button)
        
        QuestionField.translatesAutoresizingMaskIntoConstraints = false
        Option1Button.translatesAutoresizingMaskIntoConstraints = false
        Option2Button.translatesAutoresizingMaskIntoConstraints = false
        Option3Button.translatesAutoresizingMaskIntoConstraints = false
        Option4Button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.QuestionField.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor),
            self.QuestionField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.QuestionField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.QuestionField.heightAnchor.constraint(equalToConstant: 120),
            
            self.Option1Button.topAnchor.constraint(equalTo: QuestionField.bottomAnchor, constant: 22),
            self.Option1Button.centerXAnchor.constraint(equalTo: QuestionField.centerXAnchor),
            self.Option1Button.heightAnchor.constraint(equalToConstant: 55),
            self.Option1Button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            self.Option2Button.topAnchor.constraint(equalTo: Option1Button.bottomAnchor, constant: 22),
            self.Option2Button.centerXAnchor.constraint(equalTo: QuestionField.centerXAnchor),
            self.Option2Button.heightAnchor.constraint(equalToConstant: 55),
            self.Option2Button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            self.Option3Button.topAnchor.constraint(equalTo: Option2Button.bottomAnchor, constant: 22),
            self.Option3Button.centerXAnchor.constraint(equalTo: QuestionField.centerXAnchor),
            self.Option3Button.heightAnchor.constraint(equalToConstant: 55),
            self.Option3Button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            self.Option4Button.topAnchor.constraint(equalTo: Option3Button.bottomAnchor, constant: 22),
            self.Option4Button.centerXAnchor.constraint(equalTo: QuestionField.centerXAnchor),
            self.Option4Button.heightAnchor.constraint(equalToConstant: 55),
            self.Option4Button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
        ])
    }
    @objc private func didTapOption1() {
        HomeFootprint = HomeFootprint + 0.5
        print(HomeFootprint)
        let vc = Quiz3Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        HomeFootprint = HomeFootprint + 1
        let vc = Quiz3Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption3() {
        HomeFootprint = HomeFootprint + 1.5
        let vc = Quiz3Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption4() {
        HomeFootprint = HomeFootprint + 2.5
        let vc = Quiz4Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

class Quiz3Controller: UIViewController {
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "What type is your primary heating system?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "Gas Boiler", hasBackground: true, fontSize: .big, buttonColor: "Red")
    private let Option2Button = CustomQuizButton(title: "Electricity", hasBackground: true, fontSize: .big, buttonColor: "Red")
    private let Option3Button = CustomQuizButton(title: "Coal", hasBackground: true, fontSize: .big, buttonColor: "Red")
    private let Option4Button = CustomQuizButton(title: "Other", hasBackground: true, fontSize: .big, buttonColor: "Red")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        self.Option1Button.addTarget(self, action: #selector(didTapOption1), for: .touchUpInside)
        self.Option2Button.addTarget(self, action: #selector(didTapOption2), for: .touchUpInside)
        self.Option3Button.addTarget(self, action: #selector(didTapOption3), for: .touchUpInside)
        self.Option4Button.addTarget(self, action: #selector(didTapOption4), for: .touchUpInside)
    }
    
    private func setupUI() {
        self.view.backgroundColor = .systemBackground
        
        self.view.addSubview(QuestionField)
        self.view.addSubview(Option1Button)
        self.view.addSubview(Option2Button)
        self.view.addSubview(Option3Button)
        self.view.addSubview(Option4Button)
        
        QuestionField.translatesAutoresizingMaskIntoConstraints = false
        Option1Button.translatesAutoresizingMaskIntoConstraints = false
        Option2Button.translatesAutoresizingMaskIntoConstraints = false
        Option3Button.translatesAutoresizingMaskIntoConstraints = false
        Option4Button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.QuestionField.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor),
            self.QuestionField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.QuestionField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.QuestionField.heightAnchor.constraint(equalToConstant: 120),
            
            self.Option1Button.topAnchor.constraint(equalTo: QuestionField.bottomAnchor, constant: 22),
            self.Option1Button.centerXAnchor.constraint(equalTo: QuestionField.centerXAnchor),
            self.Option1Button.heightAnchor.constraint(equalToConstant: 55),
            self.Option1Button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            self.Option2Button.topAnchor.constraint(equalTo: Option1Button.bottomAnchor, constant: 22),
            self.Option2Button.centerXAnchor.constraint(equalTo: QuestionField.centerXAnchor),
            self.Option2Button.heightAnchor.constraint(equalToConstant: 55),
            self.Option2Button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            self.Option3Button.topAnchor.constraint(equalTo: Option2Button.bottomAnchor, constant: 22),
            self.Option3Button.centerXAnchor.constraint(equalTo: QuestionField.centerXAnchor),
            self.Option3Button.heightAnchor.constraint(equalToConstant: 55),
            self.Option3Button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            self.Option4Button.topAnchor.constraint(equalTo: Option3Button.bottomAnchor, constant: 22),
            self.Option4Button.centerXAnchor.constraint(equalTo: QuestionField.centerXAnchor),
            self.Option4Button.heightAnchor.constraint(equalToConstant: 55),
            self.Option4Button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
        ])
    }
    @objc private func didTapOption1() {
        HomeFootprint = HomeFootprint + 2.19
        let vc = Quiz4Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        HomeFootprint = HomeFootprint + 0.61
        let vc = Quiz4Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption3() {
        HomeFootprint = HomeFootprint + 4.33
        let vc = Quiz4Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption4() {
        HomeFootprint = HomeFootprint + 2.41
        let vc = Quiz4Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

class Quiz4Controller: UIViewController {
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Do you have a green energy tariff"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "Yes", hasBackground: true, fontSize: .big, buttonColor: "Red")
    private let Option2Button = CustomQuizButton(title: "No", hasBackground: true, fontSize: .big, buttonColor: "Red")

    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        self.Option1Button.addTarget(self, action: #selector(didTapOption1), for: .touchUpInside)
        self.Option2Button.addTarget(self, action: #selector(didTapOption2), for: .touchUpInside)
    }
    
    private func setupUI() {
        self.view.backgroundColor = .systemBackground
        
        self.view.addSubview(QuestionField)
        self.view.addSubview(Option1Button)
        self.view.addSubview(Option2Button)
        
        QuestionField.translatesAutoresizingMaskIntoConstraints = false
        Option1Button.translatesAutoresizingMaskIntoConstraints = false
        Option2Button.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            self.QuestionField.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor),
            self.QuestionField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.QuestionField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.QuestionField.heightAnchor.constraint(equalToConstant: 120),
            
            self.Option1Button.topAnchor.constraint(equalTo: QuestionField.bottomAnchor, constant: 22),
            self.Option1Button.centerXAnchor.constraint(equalTo: QuestionField.centerXAnchor),
            self.Option1Button.heightAnchor.constraint(equalToConstant: 55),
            self.Option1Button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            self.Option2Button.topAnchor.constraint(equalTo: Option1Button.bottomAnchor, constant: 22),
            self.Option2Button.centerXAnchor.constraint(equalTo: QuestionField.centerXAnchor),
            self.Option2Button.heightAnchor.constraint(equalToConstant: 55),
            self.Option2Button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            
        ])
    }
    @objc private func didTapOption1() {
        HomeFootprint = HomeFootprint/2
        let vc = Quiz5Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        let vc = Quiz5Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

class Quiz5Controller: UIViewController {
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "How many people live in your house?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "Just me", hasBackground: true, fontSize: .big, buttonColor: "Red")
    private let Option2Button = CustomQuizButton(title: "2-3 people", hasBackground: true, fontSize: .big, buttonColor: "Red")
    private let Option3Button = CustomQuizButton(title: "4-5 people", hasBackground: true, fontSize: .big, buttonColor: "Red")
    private let Option4Button = CustomQuizButton(title: "6+ people", hasBackground: true, fontSize: .big, buttonColor: "Red")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        self.Option1Button.addTarget(self, action: #selector(didTapOption1), for: .touchUpInside)
        self.Option2Button.addTarget(self, action: #selector(didTapOption2), for: .touchUpInside)
        self.Option3Button.addTarget(self, action: #selector(didTapOption3), for: .touchUpInside)
        self.Option4Button.addTarget(self, action: #selector(didTapOption4), for: .touchUpInside)
    }
    
    private func setupUI() {
        self.view.backgroundColor = .systemBackground
        
        self.view.addSubview(QuestionField)
        self.view.addSubview(Option1Button)
        self.view.addSubview(Option2Button)
        self.view.addSubview(Option3Button)
        self.view.addSubview(Option4Button)
        
        QuestionField.translatesAutoresizingMaskIntoConstraints = false
        Option1Button.translatesAutoresizingMaskIntoConstraints = false
        Option2Button.translatesAutoresizingMaskIntoConstraints = false
        Option3Button.translatesAutoresizingMaskIntoConstraints = false
        Option4Button.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            self.QuestionField.topAnchor.constraint(equalTo: self.view.layoutMarginsGuide.topAnchor),
            self.QuestionField.leadingAnchor.constraint(equalTo: self.view.leadingAnchor),
            self.QuestionField.trailingAnchor.constraint(equalTo: self.view.trailingAnchor),
            self.QuestionField.heightAnchor.constraint(equalToConstant: 120),
            
            self.Option1Button.topAnchor.constraint(equalTo: QuestionField.bottomAnchor, constant: 22),
            self.Option1Button.centerXAnchor.constraint(equalTo: QuestionField.centerXAnchor),
            self.Option1Button.heightAnchor.constraint(equalToConstant: 55),
            self.Option1Button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            self.Option2Button.topAnchor.constraint(equalTo: Option1Button.bottomAnchor, constant: 22),
            self.Option2Button.centerXAnchor.constraint(equalTo: QuestionField.centerXAnchor),
            self.Option2Button.heightAnchor.constraint(equalToConstant: 55),
            self.Option2Button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            self.Option3Button.topAnchor.constraint(equalTo: Option2Button.bottomAnchor, constant: 22),
            self.Option3Button.centerXAnchor.constraint(equalTo: QuestionField.centerXAnchor),
            self.Option3Button.heightAnchor.constraint(equalToConstant: 55),
            self.Option3Button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
            self.Option4Button.topAnchor.constraint(equalTo: Option3Button.bottomAnchor, constant: 22),
            self.Option4Button.centerXAnchor.constraint(equalTo: QuestionField.centerXAnchor),
            self.Option4Button.heightAnchor.constraint(equalToConstant: 55),
            self.Option4Button.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.85),
            
        ])
    }
    @objc private func didTapOption1() {
        HomeFootprint = HomeFootprint/1
        didHome = true
        let vc = QuizController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        HomeFootprint = HomeFootprint/2
        didHome = true
        let vc = QuizController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption3() {
        HomeFootprint = HomeFootprint/4
        didHome = true
        let vc = QuizController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption4() {
        HomeFootprint = HomeFootprint/6
        didHome = true
        let vc = QuizController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}


