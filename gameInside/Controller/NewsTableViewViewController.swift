//
//  NewsTableViewViewController.swift
//  gameInside
//
//  Created by Alexander on 5/21/19.
//  Copyright © 2019 Alexander. All rights reserved.
//

import UIKit
import WebKit

class NewsTableViewViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var news: [News]!
    let webView = WKWebView()
    var test: [News] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        displayURL()
//        test = mainPageDataRequest()
//        print(test)
        mainPageDataRequest()
//        test = mainPageParsing(from: html)
//        news = mainPageParsing(from: test)
        news = createNews()
    }
    
    
    func createNews() -> [News] {
//        displayURL()
        var tempNews: [News] = []
//        displayURL()
        let post1 = News(image: UIImage(named: "testImage")!, title: "TestTitle post can be here", text: "Loremipsun sajnlksanflkasnf lorem ipnsaon ;skljkf")
        let post2 = News(image: UIImage(named: "testImage")!, title: "TestTisadtle post can be dsfsdfhere", text: "Loremdsa ipsun sajnlksanflkasdsadasnf lorem ipnssad  asdaon ;skljkf")

        tempNews.append(post1)
        tempNews.append(post2)

        return tempNews
    }

}

extension NewsTableViewViewController: UITableViewDataSource, UITabBarDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let post = news[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell") as! OneNewsTableViewCell
        
        cell.configureCell(post: post)
        
        return cell
    }
    
    
}
