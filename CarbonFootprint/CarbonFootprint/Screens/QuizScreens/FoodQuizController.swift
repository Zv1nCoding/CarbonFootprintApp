//
//  FoodQuizController.swift
//  CarbonFootprint
//
//  Created by user233253 on 3/9/23.
//

import UIKit

class FoodQuizFootprint {
    var footprint = 0.0
}

var FoodFootprint = 0.0
var didFood = false
class FoodQuizController: UIViewController {
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "What is your typical diet?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "Vegan/Vegetarian", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    private let Option2Button = CustomQuizButton(title: "Pescatarian", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    private let Option3Button = CustomQuizButton(title: "Occasional meat", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    private let Option4Button = CustomQuizButton(title: "Frequent meat", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    
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
        FoodFootprint = FoodFootprint + 1.7
        let vc = Food2Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        FoodFootprint = FoodFootprint + 1.9
        let vc = Food2Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption3() {
        FoodFootprint = FoodFootprint + 2.5
        let vc = Food2Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption4() {
        FoodFootprint = FoodFootprint + 3.3
        let vc = Food2Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

class Food2Controller: UIViewController {
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "How often do you eat meat?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "Every day", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    private let Option2Button = CustomQuizButton(title: "A couple of times a week", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    private let Option3Button = CustomQuizButton(title: "A few times a month", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    private let Option4Button = CustomQuizButton(title: "Never", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    
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
        FoodFootprint = FoodFootprint + 1.1
        let vc = Food3Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        FoodFootprint = FoodFootprint + 0.55
        let vc = Food3Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption3() {
        FoodFootprint = FoodFootprint + 0.12
        let vc = Food3Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption4() {
        FoodFootprint = FoodFootprint + 0
        let vc = Food3Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

class Food3Controller: UIViewController {
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "How often do you eat dairy products?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "Everyday", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    private let Option2Button = CustomQuizButton(title: "A couple of times a week", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    private let Option3Button = CustomQuizButton(title: "A few times a month", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    private let Option4Button = CustomQuizButton(title: "Never", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    
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
        FoodFootprint = FoodFootprint + 0.57
        let vc = Food4Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        FoodFootprint = FoodFootprint + 0.14
        let vc = Food4Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption3() {
        FoodFootprint = FoodFootprint + 0.08
        let vc = Food4Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption4() {
        FoodFootprint = FoodFootprint + 0
        let vc = Food4Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

class Food4Controller: UIViewController {
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "How often do you eat out of season food? (mangos in winter, etc)"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "Every Day", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    private let Option2Button = CustomQuizButton(title: "A couple of times a week", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    private let Option3Button = CustomQuizButton(title: "A few times a month", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    private let Option4Button = CustomQuizButton(title: "Never", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    
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
        FoodFootprint = FoodFootprint + 0.21
        let vc = Food5Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        FoodFootprint = FoodFootprint + 0.07
        let vc = Food5Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption3() {
        FoodFootprint = FoodFootprint + 0.02
        let vc = Food5Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption4() {
        FoodFootprint = FoodFootprint + 0
        let vc = Food5Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

class Food5Controller: UIViewController {
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "How much food do you throw out?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "None - I never throw out food", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    private let Option2Button = CustomQuizButton(title: "Minimal - I try to use up as much as possible", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    private let Option3Button = CustomQuizButton(title: "Some - I overbuy and stuff goes off", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    private let Option4Button = CustomQuizButton(title: "A lot - I throw away a lot of food", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    
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
        FoodFootprint = FoodFootprint + 0
        didFood = true
        let vc = QuizController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        FoodFootprint = FoodFootprint + 0.9
        didFood = true
        let vc = QuizController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption3() {
        FoodFootprint = FoodFootprint + 2.5
        didFood = true
        let vc = QuizController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption4() {
        FoodFootprint = FoodFootprint + 5.0
        didFood = true
        let vc = QuizController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}


