//
//  TransportQuizController.swift
//  CarbonFootprint
//
//  Created by user233253 on 3/9/23.
//

import UIKit


var TransportFootprint = 0.0
var didTransport = false

class TransportQuizController: UIViewController {
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "How do you get around?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "Mostly by car", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    private let Option2Button = CustomQuizButton(title: "Mostly by public transport", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    private let Option3Button = CustomQuizButton(title: "Mostly by motorbike", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    private let Option4Button = CustomQuizButton(title: "Mostly by walking or cycling", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    
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
        TransportFootprint = TransportFootprint + 1.98
        let vc = Transport2Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        TransportFootprint = TransportFootprint + 1.02
        let vc = Transport2Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption3() {
        TransportFootprint = TransportFootprint + 0.79
        let vc = Transport2Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption4() {
        TransportFootprint = TransportFootprint + 0
        let vc = Transport2Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

class Transport2Controller: UIViewController {
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "How often do you travel via plane"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "More than once a month", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    private let Option2Button = CustomQuizButton(title: "Once or twice a year", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    private let Option3Button = CustomQuizButton(title: "Once every few years", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    private let Option4Button = CustomQuizButton(title: "Never", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    
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
        TransportFootprint = TransportFootprint + 2.28
        let vc = Transport3Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        TransportFootprint = TransportFootprint + 0.38
        let vc = Transport3Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption3() {
        TransportFootprint = TransportFootprint + 0.19
        let vc = Transport3Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption4() {
        TransportFootprint = TransportFootprint + 0
        let vc = Transport3Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

class Transport3Controller: UIViewController {
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "How often do you travel via ferry?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "More than once a month", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    private let Option2Button = CustomQuizButton(title: "Once or twice a year", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    private let Option3Button = CustomQuizButton(title: "Once every few years", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    private let Option4Button = CustomQuizButton(title: "Never", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    
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
        TransportFootprint = TransportFootprint + 0.19
        let vc = Transport4Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        TransportFootprint = TransportFootprint + 0.03
        let vc = Transport4Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption3() {
        TransportFootprint = TransportFootprint + 0.01
        let vc = Transport4Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption4() {
        TransportFootprint = TransportFootprint + 0
        let vc = Transport4Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

class Transport4Controller: UIViewController {
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "How many cars do you own/use?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "0", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    private let Option2Button = CustomQuizButton(title: "1", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    private let Option3Button = CustomQuizButton(title: "2", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    private let Option4Button = CustomQuizButton(title: "3+", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    
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
        didTransport = true
        let vc = QuizController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        TransportFootprint = TransportFootprint + 0.99
        didTransport = true
        let vc = QuizController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption3() {
        TransportFootprint = TransportFootprint + 1.98
        didTransport = true
        let vc = QuizController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption4() {
        TransportFootprint = TransportFootprint + 2.97
        didTransport = true
        let vc = QuizController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

