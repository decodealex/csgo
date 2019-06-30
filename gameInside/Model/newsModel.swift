//
//  newsModel.swift
//  gameInside
//
//  Created by Alexander on 5/21/19.
//  Copyright © 2019 Alexander. All rights reserved.
//

import Foundation
import UIKit

struct MatchHTMLData {
    
    var matchID: Int
    var matchHTML: String
    
    init(matchID: Int, matchHTML: String) {
        self.matchID = matchID
        self.matchHTML = matchHTML
    }
}
