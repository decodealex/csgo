//
//  MainPageParsing.swift
//  gameInside
//
//  Created by Alexander on 5/30/19.
//  Copyright © 2019 Alexander. All rights reserved.
//

import Foundation
import SwiftSoup

func parseOneMatchHTML(from: String) -> [MatchHTMLData] {
    var matchHTMLsArray = [MatchHTMLData]()
    do {
        let html: String = from
        var doc: Document = try SwiftSoup.parse(html)
        let matchHTML = try doc.getElementsByClass("a-reset block upcoming-match standard-box").array()
        
        var matchHTMLs = [MatchHTMLData]()
        for i in 0...matchHTML.count - 1 {
            let matchHTML = try doc.html()
//            let matchID = matchHTML[i]
            
            let matchHTMLData = MatchHTMLData(matchID: i, matchHTML: matchHTML)
            matchHTMLs.append(matchHTMLData)
        }
        matchHTMLsArray = matchHTMLs
        
    } catch Exception.Error(let type, let message) {
        print(message)
    } catch {
        print("error")
    }
    return matchHTMLsArray
}

func mainPageParsing(from: String) -> [Match] {
    var matchesArray = [Match]()
    
    do {
        let html: String = from
        var doc: Document = try SwiftSoup.parse(html)
        let matchHTML = try doc.getElementsByClass("a-reset block upcoming-match standard-box").array()
        let teamTitle = try doc.getElementsByClass("team-cell").array()
        let matchTime = try doc.getElementsByClass("time").array()
        let eventName = try doc.getElementsByClass("event-name").array()
//        let matchType = try doc.getElementsByClass("map-and-stars").array()
        
        
        var matches = [Match]()
        for i in 0...matchHTML.count - 1 {
            let matchesCount = try matchHTML.count
            for i in 0...1 {
                let leftTeamTitle = try teamTitle[i].text()
                let rightTeamTitle = try teamTitle[i + 1].text()
            }
            let leftTeamTitle = try teamTitle[i].text()
//            i += 1
            let rightTeamTitle = try teamTitle[i + 1].text()
//            let teamTitle = try teamTitle[i].text()
            let matchTime = try matchTime[i].text()
//            let eventName = try eventName[i].text()
//            let matchType = try matchType[i].text()


//            var post = Mat(image: UIImage(named: "testImage")!, title: title, text: text)
            let match = Match(leftTeamImage:  UIImage(named: "left")!, rightTeamImage: UIImage(named: "right")!, leftTeamTitle: leftTeamTitle, rightTeamTitle: rightTeamTitle, matchTime: matchTime, eventName: "eventName", eventImage: UIImage(named: "icon")!, matchType: "BO3")
            print(matchHTML)
            
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

//func mainPageParsing(from: String) -> [Match] {
//    var matchesArray = [Match]()
//
//    do {
//        let html: String = from
//        let doc: Document = try SwiftSoup.parse(html)
//        let teamTitle = try doc.getElementsByClass("team-cell").array()
//        let matchTime = try doc.getElementsByClass("time").array()
//        let eventName = try doc.getElementsByClass("event-name").array()
//        //        let matchType = try doc.getElementsByClass("map-and-stars").array()
//
//
//        var matches = [Match]()
//        for i in 0...teamTitle.count - 1 {
//            let teamTitle = try teamTitle[i].text()
//            let matchTime = try matchTime[i].text()
//            let eventName = try eventName[i].text()
//            //            let matchType = try matchType[i].text()
//
//            //            var post = Mat(image: UIImage(named: "testImage")!, title: title, text: text)
//            let match = Match(leftTeamImage:  UIImage(named: "left")!, rightTeamImage: UIImage(named: "right")!, leftTeamTitle: teamTitle, rightTeamTitle: teamTitle, matchTime: matchTime, eventName: eventName, eventImage: UIImage(named: "icon")!, matchType: "BO3")
//            matches.append(match)
//        }
//        matchesArray = matches
//    } catch Exception.Error(let type, let message) {
//        print(message)
//    } catch {
//        print("error")
//    }
//    return matchesArray
//
//}
