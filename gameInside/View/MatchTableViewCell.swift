//
//  MatchTableViewCell.swift
//  gameInside
//
//  Created by Alexander on 6/27/19.
//  Copyright © 2019 Alexander. All rights reserved.
//

import UIKit

class MatchTableViewCell: UITableViewCell {

   
    @IBOutlet weak var leftTeamImage: UIImageView!
    @IBOutlet weak var rightTeamImage: UIImageView!
    @IBOutlet weak var leftTeamTitle: UILabel!
    @IBOutlet weak var rightTeamTitle: UILabel!
    @IBOutlet weak var matchTime: UILabel!
    @IBOutlet weak var eventNameTitle: UILabel!
    @IBOutlet weak var eventImage: UIImageView!
    @IBOutlet weak var matchTypeLAbel: UILabel!
    
    
    func configureCell(withData: Match) {
        leftTeamImage.image = withData.leftTeamImage
        leftTeamTitle.text = withData.leftTeamTitle
        rightTeamImage.image = withData.rightTeamImage
        rightTeamTitle.text = withData.rightTeamTitle
        matchTime.text = withData.matchTime
        eventNameTitle.text = withData.eventName
        eventImage.image = withData.eventImage
        matchTypeLAbel.text = withData.matchType
    }
}


