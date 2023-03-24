
import UIKit

var CarbonFootprintNow = 0.0

class HomeController: UIViewController {
    
    struct Cells {
        static let homeCell = "HomeCell"
    }
    var tableView = UITableView()
    var home: [Improvements] = []
    var didQuiz = false
    var currentCarbonFootprint = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Home"
        home = fetchData()
        configureTableView()
        AuthService.shared.fetchUser { [weak self] user, error in
            guard let self = self else {return}
            if let error = error {
                AlertManager.fetchingUserError(on: self, with: error)
                return
            }

            if let user = user {
                self.didQuiz = user.didQuiz
                self.currentCarbonFootprint = user.carbonFootprint
                CarbonFootprintNow = user.carbonFootprint
            }
            print(self.didQuiz)
            print(self.currentCarbonFootprint)
        }
        
        
    }
    func configureTableView() {
        view.addSubview(tableView)
        setTableViewDelegates()
        tableView.rowHeight = 100
        tableView.register(HomeViewCell.self, forCellReuseIdentifier: Cells.homeCell)
        tableView.pin(to: view)
    }
    
    func setTableViewDelegates() {
        tableView.delegate = self
        tableView.dataSource = self
    }

    
}

extension HomeController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return home.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: Cells.homeCell) as! HomeViewCell
        let home = home[indexPath.row]
        cell.set(home: home)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("Row Selected \(indexPath.row)")
        if indexPath.row == 0{
            if didQuiz == true{
                //couldnt figure out how to do it with alertmanager, kept getting breaks
                let refreshAlert = UIAlertController(title: "Quiz completed", message: "You have already completed the quiz, going forward will reset your score", preferredStyle: UIAlertController.Style.alert)
                
                refreshAlert.addAction(UIAlertAction(title: "Dismiss and continue", style: .default, handler: { (action: UIAlertAction!) in
                    let nextVC: QuizController = QuizController()
                    self.navigationController?.pushViewController(nextVC, animated: true)
                }))
                
                refreshAlert.addAction(UIAlertAction(title: "Go back", style: .default, handler: { (action: UIAlertAction!) in
                    
                    refreshAlert.dismiss(animated: true, completion: nil)
                    
                    
                }))
                
                present(refreshAlert, animated: true, completion: nil)
            }
            else{
                let nextVC: QuizController = QuizController()
                self.navigationController?.pushViewController(nextVC, animated: true)
                
            }
        }
        else if indexPath.row == 1
        {
            let nextVC: WebLinkViewController = WebLinkViewController(with: "https://www.nationaltrust.org.uk/support-us/plant-a-tree")
            self.navigationController?.pushViewController(nextVC, animated: true)
        }
        else if indexPath.row == 2
        {
            AuthService.shared.signOut { [weak self] error in
                guard let self = self else {return}
                if let error = error {
                    AlertManager.logoutError(on: self, with: error)
                    return
                }

                if let sceneDelegate = self.view.window?.windowScene?.delegate as? SceneDelegate {
                    sceneDelegate.checkAuthentication()
                }
            }
        }
        else {
            let nextVC: HomeController = HomeController()
            self.navigationController?.pushViewController(nextVC, animated: true)
        }
    }
    
    
}

extension HomeController{

    func fetchData() -> [Improvements] {
        let Home1 = Improvements(title: "Find out your carbon footprint", image: QuizImages.quiz)
        let Home2 = Improvements(title: "Plant a tree", image: QuizImages.other)
        let Home3 = Improvements(title: "Logout", image: QuizImages.logout)
        
        return [Home1, Home2, Home3]
    }
}
