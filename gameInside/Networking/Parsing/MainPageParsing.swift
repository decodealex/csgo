//
//  MainPageParsing.swift
//  gameInside
//
//  Created by Alexander on 5/30/19.
//  Copyright © 2019 Alexander. All rights reserved.
//

import Foundation
import SwiftSoup

func mainPageParsing(from: String) -> [News] {
    var newsArray = [News]()
    
    do {
        let html: String = from
        let doc: Document = try SwiftSoup.parse(html)
        let postTitle = try doc.getElementsByClass("team").array()
//        let postTitle = try doc.getElementsByClass("homepost-heading h2 a").array()
//        let postTitle = try doc.select("newstext").array()
        let postContent = try doc.getElementsByClass("time").array()
        
        var news = [News]()
        for i in 0...postTitle.count - 1 {
            let title = try postTitle[i].text()
            let text = try postContent[i].text()
            var post = News(image: UIImage(named: "testImage")!, title: title, text: text)
            news.append(post)
        }
        newsArray = news
    } catch Exception.Error(let type, let message) {
        print(message)
    } catch {
        print("error")
    }
    return newsArray

}
