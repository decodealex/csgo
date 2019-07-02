//
//  DataRequest.swift
//  gameInside
//
//  Created by Alexander on 6/27/19.
//  Copyright © 2019 Alexander. All rights reserved.
//

import Foundation

var baseURLString = "https://www.hltv.org/matches"

func getHTMLFrom(_ thisURL: String) -> String {
    var HTML: String = ""
    guard let myURL = URL(string: baseURLString) else {
        print("Error: \(baseURLString) doesn't seem to be a valid URL")
        return ("Error: \(baseURLString) doesn't seem to be a valid URL")
    }
    
    do {
        let myHTMLString = try String(contentsOf: myURL, encoding: String.Encoding.utf8)
//        print("\(myHTMLString)")
        HTML = myHTMLString
    } catch let error {
        print("Error: \(error)")

    }
//    print(HTML)
    return HTML
}
