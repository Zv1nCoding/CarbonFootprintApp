//
//  FoodImprovementTextController.swift
//  CarbonFootprint
//
//  Created by user233253 on 3/20/23.
//

import UIKit

class FoodImprovementText1Controller: UIViewController {

    private let TextField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .medium)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Reusing food containers such as takeaway tupperware and tin containers will allow you to save money and reduce your footprint as you won't have to buy any other containers"
        return label
    }()
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Have you reused food containers recently?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "Yes", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    private let Option2Button = CustomQuizButton(title: "No", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    
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
        FoodFootprint = FoodFootprint - 1.3
        let vc = ImprovementsController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        FoodFootprint = FoodFootprint - 1.8
        let vc = ImprovementsController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

class FoodImprovementText2Controller: UIViewController {

    private let TextField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .medium)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Doing zero waste food shopping will allow you to ensure that no waste is produced when doing your shopping"
        return label
    }()
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Have you gone zero waste food shopping recently?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "Yes", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    private let Option2Button = CustomQuizButton(title: "No", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    
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
        FoodFootprint = FoodFootprint - 1.3
        let vc = ImprovementsController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        FoodFootprint = FoodFootprint - 1.8
        let vc = ImprovementsController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
class FoodImprovementText3Controller: UIViewController {

    private let TextField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .medium)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Eating your leftovers will ensure no food goes to waste, making the money you spent on the food more efficient and reduce your overall carbon emission"
        return label
    }()
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Have you started eating your leftovers recently?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "Yes", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    private let Option2Button = CustomQuizButton(title: "No", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    
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
        FoodFootprint = FoodFootprint - 1.3
        let vc = ImprovementsController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        FoodFootprint = FoodFootprint - 1.8
        let vc = ImprovementsController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

class FoodImprovementText4Controller: UIViewController {

    private let TextField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .medium)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Meat accounts for nearly 60% of all greenhouse gases for food production, reducing at least 1 meal from including meat per week can reduce your carbon footprint by a wide margin"
        return label
    }()
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Have your substituted at least one meal imcluding meat to vegetarian?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "Yes", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    private let Option2Button = CustomQuizButton(title: "No", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    
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
        FoodFootprint = FoodFootprint - 1.3
        let vc = ImprovementsController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        FoodFootprint = FoodFootprint - 1.8
        let vc = ImprovementsController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

