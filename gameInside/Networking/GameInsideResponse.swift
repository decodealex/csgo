//
//  GameInsideResponse.swift
//  gameInside
//
//  Created by Alexander on 5/24/19.
//  Copyright © 2019 Alexander. All rights reserved.
//

import Foundation
import SwiftSoup

let url = "https://www.hltv.org/matches"
//var html = String()

func displayURL() {

    let myURLAdress = "https://www.hltv.org/matches"
    let myURL = URL(string: myURLAdress)

    let URLTask = URLSession.shared.dataTask(with: myURL!) {
        myData, URLResponse, Error in

        guard Error == nil else {return}

        let myHTMLString = String(data: myData!, encoding: String.Encoding.utf8)
        print(myHTMLString)
        html = myHTMLString ?? "error with htnl"
//        return myHTMLString
        parseMatches(from: html)
    }
    URLTask.resume()
    
}


func parseMatches(from: String) -> [News] {
    var matchesA = [News]()

    do {
        let html: String = from
        let doc: Document = try SwiftSoup.parse(html)
        let teamNames = try doc.getElementsByClass("team").array()
        let times = try doc.getElementsByClass("time").array()
//        let test = try doc.getele

        var matches = [News]()
        for i in 0...teamNames.count {
            let title = try teamNames[i].text()
            let text = try times[i].text()
            var match = News(image: UIImage(named: "testImage")!, title: title, text: text)
            matches.append(match)
        }
        matchesA = matches
    } catch Exception.Error(let type, let message) {
        print(message)
    } catch {
        print("error")
    }
    return matchesA
//    return matchesA

}

