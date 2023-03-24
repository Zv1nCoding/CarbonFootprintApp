//
//  NavigationBarController.swift
//  CarbonFootprint
//
//  Created by user233253 on 2/27/23.
//

import UIKit

class NavigationBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeTab = HomeController()
        let improvementsTab = ImprovementsController()
        let progressTab = ProgressController()
        let leaderboardTab = LeaderboardController()
        
        homeTab.title = "Home"
        improvementsTab.title = "Improve"
        progressTab.title = "Progress"
        leaderboardTab.title = "Leaderboard"
        
        homeTab.navigationItem.largeTitleDisplayMode = .always
        improvementsTab.navigationItem.largeTitleDisplayMode = .always
        progressTab.navigationItem.largeTitleDisplayMode = .always
        leaderboardTab.navigationItem.largeTitleDisplayMode = .always
        
        let homeNav = UINavigationController(rootViewController: homeTab)
        let improvementsNav = UINavigationController(rootViewController: improvementsTab)
        let progressNav = UINavigationController(rootViewController: progressTab)
        let leaderboardNav = UINavigationController(rootViewController: leaderboardTab)
        
        homeTab.tabBarItem = UITabBarItem(title: "Home", image: UIImage(systemName: "house"), tag: 1)
        improvementsTab.tabBarItem = UITabBarItem(title: "Improvements", image: UIImage(systemName: "magnifyingglass"), tag: 1)
        progressTab.tabBarItem = UITabBarItem(title: "Progress", image: UIImage(systemName: "chart.bar"), tag: 1)
        leaderboardTab.tabBarItem = UITabBarItem(title: "Groups", image: UIImage(systemName: "person.3"), tag: 1)
        
        homeNav.navigationBar.prefersLargeTitles = true
        improvementsNav.navigationBar.prefersLargeTitles = true
        progressNav.navigationBar.prefersLargeTitles = true
        leaderboardNav.navigationBar.prefersLargeTitles = true
        
        setViewControllers([homeNav, improvementsNav, progressNav, leaderboardNav], animated: false)
    }
}
