//
//  House.swift
//  ListViewApp_AlenaMarchuk
//
//  Created by alena on 6/1/17.
//  Copyright © 2017 DeAnza. All rights reserved.
//

import UIKit

class House: NSObject {
    var name = ""
    var sigil = UIImage(named:"")
    var words = ""
    var founded = ""
    var overlord : [UIImage] = []
    
    init(name: String, sigil: UIImage, words: String, founded: String, overlord: [UIImage]){
        self.name = name
        self.sigil = sigil
        self.words = words
        self.founded = founded
        self.overlord = overlord
    }
}
