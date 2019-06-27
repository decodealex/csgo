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
    
//    var news: [News]!
    var matches: [Match]!
    var html: String = ""
    var parsedData: [Match]!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        html = getHTMLFrom(baseURLString)
        parsedData = mainPageParsing(from: html)
        matches = parsedData
        var nib = UINib(nibName: "MatchTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "matchCell")
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
        return matches.count / 2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let match = matches[indexPath.row]
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "matchCell") as! MatchTableViewCell
        
        cell.configureCell(withData: match)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
}
