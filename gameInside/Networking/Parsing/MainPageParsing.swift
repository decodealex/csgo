//
//  MainPageParsing.swift
//  gameInside
//
//  Created by Alexander on 5/30/19.
//  Copyright © 2019 Alexander. All rights reserved.
//

import Foundation
import SwiftSoup

func mainPageParsing(from: String) -> [Match] {
    var matchesArray = [Match]()
    
    do {
        let html: String = from
        let doc: Document = try SwiftSoup.parse(html)
        let teamTitle = try doc.getElementsByClass("team").array()
        let matchTime = try doc.getElementsByClass("time").array()
        
        var matches = [Match]()
        for i in 0...teamTitle.count - 1 {
            let teamTitle = try teamTitle[i].text()
            let matchTime = try matchTime[i].text()
//            var post = Mat(image: UIImage(named: "testImage")!, title: title, text: text)
            var match = Match(leftTeamImage:  UIImage(named: "left")!, rightTeamImage: UIImage(named: "right")!, leftTeamTitle: teamTitle, rightTeamTitle: teamTitle, matchTime: matchTime, eventName: "LOOT.BET Smack My Beach Cup", eventImage: UIImage(named: "icon")!, matchType: "BO3")
            matches.append(match)
        }
        matchesArray = matches
    } catch Exception.Error(let type, let message) {
        print(message)
    } catch {
        print("error")
    }
    return matchesArray

}
