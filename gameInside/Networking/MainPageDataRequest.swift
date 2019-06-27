////
////  MainPageDataRequest.swift
////  gameInside
////
////  Created by Alexander on 5/30/19.
////  Copyright © 2019 Alexander. All rights reserved.
////
//
//import Foundation
//import SwiftSoup
//
////let mainPageURL = "https://www.hltv.org"
//let mainPageURL = "https://www.hltv.org/matches"
//var html = String()
//
//func DataRequest(_ withURL: String) -> String {
//    
//    let urlAdress = URL(string: withURL)
//    
//    let getHtml = URLSession.shared.dataTask(with: urlAdress!) {
//        myData, URLResponse, Error in
//        guard Error == nil else { return }
//        
//        let htmlString = String(data: myData!, encoding: String.Encoding.utf8)
////        print(htmlString)
////        print(htmlUno)
////        newsArrayTest = mainPageParsing(from: htmlUno)
//    }
////    print(htmlString)
//    
//    getHtml.resume()
//    
////    return htmlUno
////    return htmlUno
//}
