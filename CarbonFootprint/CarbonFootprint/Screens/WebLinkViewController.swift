//
//  WebLinkViewController.swift
//  CarbonFootprint
//
//  Created by user233253 on 3/23/23.
//

import UIKit
import WebKit

class WebLinkViewController: UIViewController {

    let webView = WKWebView()
    let url : String
    
    init(with url:String) {
        self.url = url
        super.init(nibName: nil, bundle: nil)
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        
        guard let url = URL(string: self.url)
        else {
            dismiss(animated: true, completion: nil)
            return
        }
        
        webView.load(URLRequest(url: url))
        
        
    }
    func setupUI() {
       navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(didTapDone))
       navigationController?.navigationBar.backgroundColor = .secondarySystemBackground
       
       view.addSubview(webView)
       webView.translatesAutoresizingMaskIntoConstraints = false
       
       NSLayoutConstraint.activate([
           webView.topAnchor.constraint(equalTo: view.topAnchor),
           webView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
           webView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
           webView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
       ])
   }
   
   @objc func didTapDone() {
       self.dismiss(animated: true, completion: nil)
       }


}
