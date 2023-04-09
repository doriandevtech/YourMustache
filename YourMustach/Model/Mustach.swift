//
//  Mustach.swift
//  YourMustach
//
//  Created by Dorian Emenir on 09/04/2023.
//

import UIKit


struct Mustach {
    
    var name: String
    var desc: String
    
    var title: String {
        return "The mustach's style is \(name)"
    }
    
    var image: UIImage? {
        return UIImage(named: name)
    }
}
