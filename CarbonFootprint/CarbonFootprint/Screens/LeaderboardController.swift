//
//  GroupsController.swift
//  CarbonFootprint
//
//  Created by user233253 on 2/27/23.
//

import UIKit

class LeaderboardController: UIViewController {

    
    struct Cells {
        static let leaderboardCell = "leaderboardCell"
    }
    var tableView = UITableView()
    var leaderboard:  [Leaderboard] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Leaderboard"
        leaderboard = fetchData()
        configureTableView()
        
        
    }
    func configureTableView() {
        view.addSubview(tableView)
        setTableViewDelegates()
        tableView.rowHeight = 100
        tableView.register(LeaderboardViewCell.self, forCellReuseIdentifier: Cells.leaderboardCell)
        tableView.pin(to: view)
    }
    
    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    
}

extension LeaderboardController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return leaderboard.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.leaderboardCell) as! LeaderboardViewCell
        let leaderboard = leaderboard[indexPath.row]
        cell.set(Leaderboards: leaderboard)
        return cell
    }
    
}

extension LeaderboardController{

    func fetchData() -> [Leaderboard] {
        let Leaderboard1 = Leaderboard(rank: "1", title: "Joan P.", image: QuizImages.person, carbonFootprint: "0.4 tonnes")
        let Leaderboard2 = Leaderboard(rank: "2", title: "Luke M.", image: QuizImages.person, carbonFootprint: "1.6 tonnes")
        let Leaderboard3 = Leaderboard(rank: "3", title: "Steven C.", image: QuizImages.person, carbonFootprint: "2.6 tonnes")
        let Leaderboard4 = Leaderboard(rank: "4", title: "Rachel R.", image: QuizImages.person, carbonFootprint: "3.2 tonnes")
        let Leaderboard5 = Leaderboard(rank: "5", title: "Charles D.", image: QuizImages.person, carbonFootprint: "4.6 tonnes")
        let Leaderboard6 = Leaderboard(rank: "6", title: "Monique S.", image: QuizImages.person, carbonFootprint: "7.2 tonnes")
        
        return [Leaderboard1, Leaderboard2, Leaderboard3, Leaderboard4, Leaderboard5, Leaderboard6]
    }
}


