
//
import UIKit
class ImprovementsController: UIViewController {
    
    var scrollView = UIScrollView()
    var contentView = UIView()
 
    let HomeImprovementButton = CustomQuizButton(title: "Home", hasBackground: true, fontSize: .big, buttonColor: "Red")
    let TransportImprovementButton = CustomQuizButton(title: "Transport", hasBackground: true, fontSize: .big, buttonColor: "Blue")
    let FoodImprovementButton = CustomQuizButton(title: "Food", hasBackground: true, fontSize: .big, buttonColor: "Purple")
    let OtherImprovementButton = CustomQuizButton(title: "Other", hasBackground: true, fontSize: .big, buttonColor: "Green")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        self.HomeImprovementButton.addTarget(self, action: #selector(didTapHome), for: .touchUpInside)
        self.TransportImprovementButton.addTarget(self, action: #selector(didTapTransport), for: .touchUpInside)
        self.FoodImprovementButton.addTarget(self, action: #selector(didTapFood), for: .touchUpInside)
        self.OtherImprovementButton.addTarget(self, action: #selector(didTapOther), for: .touchUpInside)
        
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
        
        contentView.addSubview(HomeImprovementButton)
        HomeImprovementButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            HomeImprovementButton.topAnchor.constraint(equalTo:  contentView.topAnchor, constant: 10),
            HomeImprovementButton.heightAnchor.constraint(equalToConstant: 150),
            HomeImprovementButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            HomeImprovementButton.widthAnchor.constraint(equalToConstant: 350),
        ])
        
        contentView.addSubview(TransportImprovementButton)
        TransportImprovementButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            TransportImprovementButton.topAnchor.constraint(equalTo:  HomeImprovementButton.bottomAnchor, constant: 10),
            TransportImprovementButton.heightAnchor.constraint(equalToConstant: 150),
            TransportImprovementButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            TransportImprovementButton.widthAnchor.constraint(equalToConstant: 350),
        ])
        
        contentView.addSubview(FoodImprovementButton)
        FoodImprovementButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            FoodImprovementButton.topAnchor.constraint(equalTo:  TransportImprovementButton.bottomAnchor, constant: 10),
            FoodImprovementButton.heightAnchor.constraint(equalToConstant: 150),
            FoodImprovementButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            FoodImprovementButton.widthAnchor.constraint(equalToConstant: 350),
        ])
        
        contentView.addSubview(OtherImprovementButton)
        OtherImprovementButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            OtherImprovementButton.topAnchor.constraint(equalTo:  FoodImprovementButton.bottomAnchor, constant: 10),
            OtherImprovementButton.heightAnchor.constraint(equalToConstant: 150),
            OtherImprovementButton.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            OtherImprovementButton.widthAnchor.constraint(equalToConstant: 350),
        ])
        
        // Set the content size of the scroll view
        contentView.bottomAnchor.constraint(equalTo: contentView.subviews.last!.bottomAnchor, constant: 20).isActive = true
    }
    @objc private func didTapHome() {
        let vc = HomeImprovementController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapTransport() {
        let vc = TransportImprovementController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapFood() {
        let vc = FoodImprovementController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    @objc private func didTapOther() {
        let vc = OtherImprovementController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
