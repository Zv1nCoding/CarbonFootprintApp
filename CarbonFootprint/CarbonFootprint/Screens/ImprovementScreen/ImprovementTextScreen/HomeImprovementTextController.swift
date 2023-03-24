//
//  HomeImprovementTextController.swift
//  CarbonFootprint
//
//  Created by user233253 on 3/20/23.
//

import UIKit

class HomeImprovementText1Controller: UIViewController {

    private var CarbonFootprint = 0.0
    private let TextField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .medium)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Secondary glazing panels work as an addition layer of glazing for you existing windows, this allows for better heat retention, as well as with sound and condensation reduction as well as an improvement in security"
        return label
    }()
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Have you installed secondary glazing panels recently?"
        return label
    }()
    private let Option1Button = CustomQuizButton(title: "Yes", hasBackground: true, fontSize: .big, buttonColor: "Red")
    private let Option2Button = CustomQuizButton(title: "No", hasBackground: true, fontSize: .big, buttonColor: "Red")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
        
        AuthService.shared.fetchUser { [weak self] user, error in
            guard let self = self else {return}
            if let error = error {
                AlertManager.fetchingUserError(on: self, with: error)
                return
            }

            if let user = user {
                self.CarbonFootprint = user.carbonFootprint
            }
        }
        print(CarbonFootprint)
        
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

class HomeImprovementText2Controller: UIViewController {

    private let TextField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .medium)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Taping window frames will protect the tehm against draughts and the potential risk of condensation as well as help with insulation, allowing for better heat retention"
        return label
    }()
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Have you taped your window frame with insulation tape recently?"
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
class HomeImprovementText3Controller: UIViewController {

    private let TextField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .medium)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "LED bulbs not only last longer, they also use less energy, meaning you will reduce your carbon footprint and save a bit of money on your electricity bill"
        return label
    }()
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Have you installed LED bulbs recently?"
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

class HomeImprovementText4Controller: UIViewController {

    private let TextField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .medium)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Bleeding your radiators allows removes any air pockets that have been formed in the radiator to be removed, this make the heating system more efficient and might save you some money"
        return label
    }()
    
    private let QuestionField: UILabel = {
        let label = UILabel()
        label.textColor = .label
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.lineBreakMode = .byWordWrapping
        label.numberOfLines = 0
        label.text = "Have your radiators been bled recently?"
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
