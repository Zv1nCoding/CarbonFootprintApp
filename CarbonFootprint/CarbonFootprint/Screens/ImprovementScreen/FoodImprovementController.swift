import UIKit

class FoodImprovementController: UIViewController {
    
    var scrollView = UIScrollView()
    var contentView = UIView()
    
    let FoodImprovement1Button = CustomQuizButton(title: "Reuse food Containers", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    let FoodImprovement2Button = CustomQuizButton(title: "Do zero waste food shopping", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    let FoodImprovement3Button = CustomQuizButton(title: "Eat your leftovers", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    let FoodImprovement4Button = CustomQuizButton(title: "Choose a vegetarian meal", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        self.FoodImprovement1Button.addTarget(self, action: #selector(didTapFood1), for: .touchUpInside)
        self.FoodImprovement2Button.addTarget(self, action: #selector(didTapFood2), for: .touchUpInside)
        self.FoodImprovement3Button.addTarget(self, action: #selector(didTapFood3), for: .touchUpInside)
        self.FoodImprovement4Button.addTarget(self, action: #selector(didTapFood4), for: .touchUpInside)
        
    }
    private func setupUI(){
        view.backgroundColor = .systemBackground
        // Create the scroll view
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
        contentView.translatesAutoresizingMaskIntoConstraints = false
        
        scrollView.addSubview(contentView)
        NSLayoutConstraint.activate([
            contentView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            contentView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            contentView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            contentView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            contentView.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
        ])
        
        contentView.addSubview(FoodImprovement1Button)
        FoodImprovement1Button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            FoodImprovement1Button.topAnchor.constraint(equalTo:  contentView.topAnchor, constant: 10),
            FoodImprovement1Button.heightAnchor.constraint(equalToConstant: 150),
            FoodImprovement1Button.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            FoodImprovement1Button.widthAnchor.constraint(equalToConstant: 350),
        ])
        
        contentView.addSubview(FoodImprovement2Button)
        FoodImprovement2Button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            FoodImprovement2Button.topAnchor.constraint(equalTo:  FoodImprovement1Button.bottomAnchor, constant: 10),
            FoodImprovement2Button.heightAnchor.constraint(equalToConstant: 150),
            FoodImprovement2Button.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            FoodImprovement2Button.widthAnchor.constraint(equalToConstant: 350),
        ])
        
        contentView.addSubview(FoodImprovement3Button)
        FoodImprovement3Button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            FoodImprovement3Button.topAnchor.constraint(equalTo:  FoodImprovement2Button.bottomAnchor, constant: 10),
            FoodImprovement3Button.heightAnchor.constraint(equalToConstant: 150),
            FoodImprovement3Button.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            FoodImprovement3Button.widthAnchor.constraint(equalToConstant: 350),
        ])
        
        contentView.addSubview(FoodImprovement4Button)
        FoodImprovement4Button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            FoodImprovement4Button.topAnchor.constraint(equalTo:  FoodImprovement3Button.bottomAnchor, constant: 10),
            FoodImprovement4Button.heightAnchor.constraint(equalToConstant: 150),
            FoodImprovement4Button.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            FoodImprovement4Button.widthAnchor.constraint(equalToConstant: 350),
        ])
        
        // Set the content size of the scroll view
        contentView.bottomAnchor.constraint(equalTo: contentView.subviews.last!.bottomAnchor, constant: 20).isActive = true
    }
    @objc private func didTapFood1() {
        let vc = FoodImprovementText1Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapFood2() {
        let vc = FoodImprovementText2Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapFood3() {
        let vc = FoodImprovementText3Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapFood4() {
        let vc = FoodImprovementText4Controller()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

