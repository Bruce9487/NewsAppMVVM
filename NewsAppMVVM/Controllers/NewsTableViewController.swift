//
//  NewsTableViewController.swift
//  NewsAppMVVM
//
//  Created by APP技術部-陳冠志 on 2019/10/18.
//  Copyright © 2019 Bruce Chen. All rights reserved.
//

import Foundation
import UIKit
import RxSwift

class NewsTableViewController: UITableViewController {
    
    let disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        populateNews()
    }
    
    private func populateNews() {
        
        let resource = Resource<ArticleResponse>(url: URL(string: "https://newsapi.org/v2/everything?q=bitcoin&from=2019-09-21&sortBy=publishedAt&apiKey=ef2e45e1c2d74a8ebd644d33d9cdc7a5")!)
        
        URLRequest.load(resource: resource)
            .subscribe(onNext: {
                print($0)
            }).disposed(by: disposeBag)
    }
}
