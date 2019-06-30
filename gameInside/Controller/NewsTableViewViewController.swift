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
        parseOneMatchHTML(from: html)
        parsedData = mainPageParsing(from: parseOneMatchHTML)
        matches = parsedData
        var nib = UINib(nibName: "MatchTableViewCell", bundle: nil)
        self.tableView.register(nib, forCellReuseIdentifier: "matchCell")
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
