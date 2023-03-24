//
//  OtherQuizController.swift
//  CarbonFootprint
//
//  Created by user233253 on 3/9/23.
//

import UIKit


var OtherFootprint = 0.0
var didOther = false

class OtherQuizController: UIViewController {
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "How often do you eat out?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "Every day", hasBackground: true, fontSize: .big, buttonColor: "Green")
    private let Option2Button = CustomQuizButton(title: "A couple of times a week", hasBackground: true, fontSize: .big, buttonColor: "Green")
    private let Option3Button = CustomQuizButton(title: "A few times a month", hasBackground: true, fontSize: .big, buttonColor: "Green")
    private let Option4Button = CustomQuizButton(title: "Never", hasBackground: true, fontSize: .big, buttonColor: "Green")
    
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
        OtherFootprint = OtherFootprint + 0.89
        let vc = Other2Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        OtherFootprint = OtherFootprint + 0.53
        let vc = Other2Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption3() {
        OtherFootprint = OtherFootprint + 0.36
        let vc = Other2Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption4() {
        OtherFootprint = OtherFootprint + 0
        let vc = Other2Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

class Other2Controller: UIViewController {
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "How often do you buy clothes?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "I get new clothes every week", hasBackground: true, fontSize: .big, buttonColor: "Green")
    private let Option2Button = CustomQuizButton(title: "I get new clothes every month", hasBackground: true, fontSize: .big, buttonColor: "Green")
    private let Option3Button = CustomQuizButton(title: "I get new clothes every season", hasBackground: true, fontSize: .big, buttonColor: "Green")
    private let Option4Button = CustomQuizButton(title: "Rarely", hasBackground: true, fontSize: .big, buttonColor: "Green")
    
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
        OtherFootprint = OtherFootprint + 1.56
        let vc = Other3Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        OtherFootprint = OtherFootprint + 0.94
        let vc = Other3Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption3() {
        OtherFootprint = OtherFootprint + 0.41
        let vc = Other3Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption4() {
        OtherFootprint = OtherFootprint + 0.12
        let vc = Other3Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

class Other3Controller: UIViewController {
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "What kind of electronics do you use?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "I get the latest gadgets", hasBackground: true, fontSize: .big, buttonColor: "Green")
    private let Option2Button = CustomQuizButton(title: "I have electronics for hobbies", hasBackground: true, fontSize: .big, buttonColor: "Green")
    private let Option3Button = CustomQuizButton(title: "I have the basics and some luxuries", hasBackground: true, fontSize: .big, buttonColor: "Green")
    private let Option4Button = CustomQuizButton(title: "I have the bare minimum", hasBackground: true, fontSize: .big, buttonColor: "Green")
    
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
        OtherFootprint = OtherFootprint + 1.17
        let vc = Other4Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        OtherFootprint = OtherFootprint + 0.7
        let vc = Other4Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption3() {
        OtherFootprint = OtherFootprint + 0.47
        let vc = Other4Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption4() {
        OtherFootprint = OtherFootprint + 0.11
        let vc = Other4Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

class Other4Controller: UIViewController {
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "How much other 'stuff' do you buy?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "I buy a lot of extra stuff", hasBackground: true, fontSize: .big, buttonColor: "Green")
    private let Option2Button = CustomQuizButton(title: "A few times a month", hasBackground: true, fontSize: .big, buttonColor: "Green")
    private let Option3Button = CustomQuizButton(title: "I only have essentials", hasBackground: true, fontSize: .big, buttonColor: "Green")
    private let Option4Button = CustomQuizButton(title: "I try not to buy new things", hasBackground: true, fontSize: .big, buttonColor: "Green")
    
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
        OtherFootprint = OtherFootprint + 0.64
        let vc = Other5Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        OtherFootprint = OtherFootprint + 0.22
        let vc = Other5Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption3() {
        OtherFootprint = OtherFootprint + 0.09
        let vc = Other5Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption4() {
        OtherFootprint = OtherFootprint + 0.01
        let vc = Other5Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

class Other5Controller: UIViewController {
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "How much do you spend on extra services (wifi, netflix, phone bills "
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "Very High - I have quite a few luxuries", hasBackground: true, fontSize: .big, buttonColor: "Green")
    private let Option2Button = CustomQuizButton(title: "Average - I have the basics and some luxuries", hasBackground: true, fontSize: .big, buttonColor: "Green")
    private let Option3Button = CustomQuizButton(title: "Below Average - I have just the basic", hasBackground: true, fontSize: .big, buttonColor: "Green")
    private let Option4Button = CustomQuizButton(title: "Very Low - I stay away from these services", hasBackground: true, fontSize: .big, buttonColor: "Green")
    
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
        OtherFootprint = OtherFootprint + 0.14
        didOther = true
        let vc = QuizController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        OtherFootprint = OtherFootprint + 0.09
        didOther = true
        let vc = QuizController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption3() {
        OtherFootprint = OtherFootprint + 0.05
        didOther = true
        let vc = QuizController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption4() {
        OtherFootprint = OtherFootprint + 0.01
        didOther = true
        let vc = QuizController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}


