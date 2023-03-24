//
//  OtherImprovementTextController.swift
//  CarbonFootprint
//
//  Created by user233253 on 3/20/23.
//

import UIKit

class OtherImprovementText1Controller: UIViewController {

    private let TextField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .medium)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Packing your own lunch to work can be a great way to reduce your footprint from fast food, as well as help you save some money"
        return label
    }()
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Have you started making packed meals recently?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "Yes", hasBackground: true, fontSize: .big, buttonColor: "Green")
    private let Option2Button = CustomQuizButton(title: "No", hasBackground: true, fontSize: .big, buttonColor: "Green")
    
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
        HomeFootprint = HomeFootprint - 1.3
        let vc = ImprovementsController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        HomeFootprint = HomeFootprint - 1.8
        let vc = ImprovementsController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

class OtherImprovementText2Controller: UIViewController {

    private let TextField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .medium)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Rack/line drying your clothes can be a great way to save money and reduce the carbon emission generated from energy required to tumble dry clothes"
        return label
    }()
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Have you started rack/line drying your clothes?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "Yes", hasBackground: true, fontSize: .big, buttonColor: "Green")
    private let Option2Button = CustomQuizButton(title: "No", hasBackground: true, fontSize: .big, buttonColor: "Green")
    
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
        HomeFootprint = HomeFootprint - 1.3
        let vc = ImprovementsController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        HomeFootprint = HomeFootprint - 1.8
        let vc = ImprovementsController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
class OtherImprovementText3Controller: UIViewController {

    private let TextField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .medium)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Growing your own fruit and vegetables can help alleviate the carbon emission from transporting fruit and vegetables to stores"
        return label
    }()
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Have you started growing your own fruit and vegetables recently?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "Yes", hasBackground: true, fontSize: .big, buttonColor: "Green")
    private let Option2Button = CustomQuizButton(title: "No", hasBackground: true, fontSize: .big, buttonColor: "Green")
    
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
        HomeFootprint = HomeFootprint - 1.3
        let vc = ImprovementsController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        HomeFootprint = HomeFootprint - 1.8
        let vc = ImprovementsController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
class OtherImprovementText4Controller: UIViewController {

    private let TextField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .medium)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Using reusable shopping bags can reduce the emissions from plastic 1 use bags, and can help you save some money in the long run"
        return label
    }()
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Have you started using reusable bags recently?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "Yes", hasBackground: true, fontSize: .big, buttonColor: "Green")
    private let Option2Button = CustomQuizButton(title: "No", hasBackground: true, fontSize: .big, buttonColor: "Green")
    
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
        HomeFootprint = HomeFootprint - 1.3
        let vc = ImprovementsController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOption2() {
        HomeFootprint = HomeFootprint - 1.8
        let vc = ImprovementsController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
