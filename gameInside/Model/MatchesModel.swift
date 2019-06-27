//
//  MatchesModel.swift
//  gameInside
//
//  Created by Alexander on 6/27/19.
//  Copyright © 2019 Alexander. All rights reserved.
//

import Foundation
import UIKit

struct Match {
    
    var leftTeamImage: UIImage
    var rightTeamImage: UIImage
    var leftTeamTitle: String
    var rightTeamTitle: String
    var matchTime: String
    var eventName: String
    var eventImage: UIImage
    var matchType: String
    
    init(leftTeamImage: UIImage, rightTeamImage: UIImage, leftTeamTitle: String, rightTeamTitle: String, matchTime: String, eventName: String, eventImage: UIImage, matchType: String) {
        self.leftTeamImage = leftTeamImage
        self.rightTeamImage = rightTeamImage
        self.leftTeamTitle = leftTeamTitle
        self.rightTeamTitle = rightTeamTitle
        self.matchTime = matchTime
        self.eventName = eventName
        self.eventImage = eventImage
        self.matchType = matchType
    }
}
