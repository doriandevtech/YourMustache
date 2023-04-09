//
//  Mustache.swift
//  YourMustache
//
//  Created by Dorian Emenir on 09/04/2023.
//

import UIKit


struct Mustache {
    
    var name: String
    var desc: String
    
    var title: String {
        return "The mustache's style is \(name)"
    }
    
    var image: UIImage? {
        return UIImage(named: name)
    }
}
