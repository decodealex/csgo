//
//  newsModel.swift
//  gameInside
//
//  Created by Alexander on 5/21/19.
//  Copyright © 2019 Alexander. All rights reserved.
//

import Foundation
import UIKit

struct News {
    
    var image: UIImage
    var title: String
    var text: String
    
    init(image: UIImage, title: String, text: String) {
        self.image = image
        self.title = title
        self.text = text
    }
}
