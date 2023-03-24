//
//  QuizScreen.swift
//  CarbonFootprint
//
//  Created by user233253 on 2/6/23.
//


import UIKit
import FirebaseFirestore
import FirebaseAuth


class QuizController: UIViewController {

    let homeQuizResult = HomeFootprint
    let foodQuizResult = FoodFootprint
    let otherQuizResult = OtherFootprint
    let transportQuizResult = TransportFootprint
    let didHomeQuiz = didHome
    let didFoodQuiz = didFood
    let didOtherQuiz = didOther
    let didTransportQuiz = didTransport
    var QuizResult = 0.0
    var didCompleteQuiz = false
    
    struct Cells {
        static let quizCell = "QuizCell"
    }
    var tableView = UITableView()
    var quiz: [Improvements] = []
    
    func totalScore(){
        QuizResult = homeQuizResult + foodQuizResult + transportQuizResult + otherQuizResult
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Quiz"
        quiz = fetchData()
        configureTableView()
        
        AuthService.shared.fetchUser { [weak self] user, error in
            guard let self = self else {return}
            if let error = error {
                AlertManager.fetchingUserError(on: self, with: error)
                return
            }

            if let user = user {
                self.QuizResult = user.carbonFootprint
            }
        }
        totalScore()
        if didHomeQuiz && didFoodQuiz && didTransportQuiz && didOtherQuiz{
            AuthService.shared.updateScore(with: QuizResult) { user, error in
                if let error = error {
                    AlertManager.updatingScoreError(on: self, with: error)
                    return
                }
            }
            didCompleteQuiz = true
            AuthService.shared.updateDidQuiz(with: didCompleteQuiz) { user, error in
                if let error = error {
                    AlertManager.updatingScoreError(on: self, with: error)
                    return
                }
            }
            let nextVC: HomeController = HomeController()
            self.navigationController?.pushViewController(nextVC, animated: true)
            self.navigationItem.setHidesBackButton(true, animated: true)

        }
    }
        
    func configureTableView() {
        view.addSubview(tableView)
        setTableViewDelegates()
        tableView.rowHeight = 100
        tableView.register(QuizViewCell.self, forCellReuseIdentifier: Cells.quizCell)
        tableView.pin(to: view)
    }
    
    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension QuizController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return quiz.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.quizCell) as! QuizViewCell
        let quiz = quiz[indexPath.row]
        cell.set(improvements: quiz)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row Selected \(indexPath.row)")
        if indexPath.row == 0
        {
            let nextVC: HomeQuizController = HomeQuizController()
            self.navigationController?.pushViewController(nextVC, animated: true)
        }
        else if indexPath.row == 1
        {
            let nextVC: TransportQuizController = TransportQuizController()
            self.navigationController?.pushViewController(nextVC, animated: true)
        }
        else if indexPath.row == 2
        {
            let nextVC: FoodQuizController = FoodQuizController()
            self.navigationController?.pushViewController(nextVC, animated: true)
        }
        else if indexPath.row == 3
        {
            let nextVC: OtherQuizController = OtherQuizController()
            self.navigationController?.pushViewController(nextVC, animated: true)
        }
        else {
            let nextVC: QuizController = QuizController()
            self.navigationController?.pushViewController(nextVC, animated: true)
        }
    }
    
    
}

extension QuizController{
    func fetchData() -> [Improvements] {
        let Improvements1 = Improvements(title: "Home", image: QuizImages.home)
        let Improvements2 = Improvements(title: "Travel", image: QuizImages.travel)
        let Improvements3 = Improvements(title: "Food", image: QuizImages.food)
        let Improvements4 = Improvements(title: "Other", image: QuizImages.other)
        
        return [Improvements1, Improvements2, Improvements3, Improvements4]
    }
}

