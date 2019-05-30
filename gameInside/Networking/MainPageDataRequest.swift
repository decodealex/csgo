//
//  MainPageDataRequest.swift
//  gameInside
//
//  Created by Alexander on 5/30/19.
//  Copyright © 2019 Alexander. All rights reserved.
//

import Foundation
import SwiftSoup

//let mainPageURL = "https://www.hltv.org"
let mainPageURL = "https://www.hltv.org/matches"
var html = String()
var newsArrayTest = [News]()
var newsArrayTestTwo = [News]()

func mainPageDataRequest() {
    
    let urlAdress = URL(string: mainPageURL)
    var htmlUno = String()
    
    let getHtml = URLSession.shared.dataTask(with: urlAdress!) {
        myData, URLResponse, Error in
        guard Error == nil else { return }
        
        let htmlString = String(data: myData!, encoding: String.Encoding.utf8)
//        print(htmlString)
        htmlUno = htmlString!
        newsArrayTest = mainPageParsing(from: htmlUno)
    }
    newsArrayTestTwo = newsArrayTest
    print("TESTTESTTEST\(html)")
//    mainPageParsing(from: html)
    getHtml.resume()
//    return htmlUno
}
