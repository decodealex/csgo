//
//  ParseOneMatchDayHtml.swift
//  gameInside
//
//  Created by Alexander on 7/2/19.
//  Copyright © 2019 Alexander. All rights reserved.
//

import Foundation
import SwiftSoup

func parseOneMatchDayHTML(from: String) -> [OneMatchDayHTMLModel] {
    
    var oneMatchDayHtml = [OneMatchDayHTMLModel]()
    
    do {
        let html: String = from
        let doc: Document = try SwiftSoup.parse(html)
        let matchDayClass = try doc.getElementsByClass("match-day").array()
        var matchDayHTMLs = [OneMatchDayHTMLModel]()
        
        for i in 0...matchDayClass.count - 1 {
            let matchDayHtmlData = try doc.html()
            let matchDayHTMLsData = OneMatchDayHTMLModel(matchesHTML: matchDayHtmlData)
            
            matchDayHTMLs.append(matchDayHTMLsData)
        }
        oneMatchDayHtml = matchDayHTMLs
//        print("ONEMATCH DAY: \(oneMatchDayHtml)")
    } catch Exception.Error(let type, let message) {
        print(message)
    } catch {
        print("error")
    }
    return oneMatchDayHtml
}
